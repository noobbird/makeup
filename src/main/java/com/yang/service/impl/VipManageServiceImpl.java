package com.yang.service.impl;

import com.yang.dao.PocketRecordMapper;
import com.yang.dao.VidGeneratorMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.*;
import com.yang.service.VipManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.nio.charset.CharacterCodingException;
import java.util.Date;
import java.util.List;

@Service
public class VipManageServiceImpl implements VipManagerService {
    @Autowired
    VipMapper vipMapper;
    @Autowired
    VidGeneratorMapper vidGeneratorMapper;
    @Autowired
    PocketRecordMapper pocketRecordMapper;

    @Override
    public Vip insert(Vip vip) {
        float initialBanlance = 0;
        float initialPoints = 0;
        String prefix = "MY";
        VidGenerator vidGenerator = vidGeneratorMapper.selectByPrimaryKey(0);
        int suffix = vidGenerator.getSuffixNumber();

        vip.setVid(prefix+ Integer.toString(suffix));
        vip.setRegisteTime(new Date());
        vip.setBanlance(initialBanlance);
        vip.setPoints(initialPoints);
        vidGenerator.setSuffixNumber(vidGenerator.getSuffixNumber() + 1);
        vidGeneratorMapper.updateByPrimaryKey(vidGenerator);
        int res = vipMapper.insert(vip);
        return vip;
    }

    @Override
    public ChargeMessage charge(String vid, int amount) {
        ChargeMessage chargeMessage = new ChargeMessage();
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(vid);
        List<Vip>  vips= vipMapper.selectByExample(vipExample);
        float newBanlance;
        if(vips.size() != 1){
            chargeMessage.setCode(-1);
            chargeMessage.setErrMsg("user doesn't exist");
            return chargeMessage;
        }
        Vip vip = vips.get(0);
        if(amount == 0){
            newBanlance = vip.getBanlance();
        }
        else{
            newBanlance = vip.getBanlance()+amount;
            vip.setBanlance(newBanlance);
            int res = vipMapper.updateByPrimaryKey(vip);
            PocketRecord pocketRecord = new PocketRecord();
            pocketRecord.setAmount(newBanlance);
            pocketRecord.setType("5");
            pocketRecord.setRelatedVipid(vid);
            pocketRecord.setTime(new Date());
            pocketRecord.setPointOrCash("1");
            pocketRecordMapper.insert(pocketRecord);
        }

        chargeMessage.setCode(1);
        chargeMessage.setBanlance(newBanlance);
        chargeMessage.setVid(vid);
        chargeMessage.setVname(vip.getvName());
        return chargeMessage;
    }

    @Override
    public int update(Vip vip) {
        //通过Vid找到数据库记录，然后根据前台传的vip对象更改这个记录
        int res = 0;
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(vip.getVid());
        List<Vip>  vips= vipMapper.selectByExample(vipExample);
        if(vips.size() != 1){
            res = -1;
        }
        else{
            Vip vipModel = vips.get(0);
            vipModel.setvName(vip.getvName());
            vipModel.setPhone(vip.getPhone());
            vipModel.setRecommendVid(vip.getRecommendVid());
            vipModel.setRecommendPerson(vip.getRecommendPerson());
            vipModel.setvClass(vip.getvClass());
            vipModel.setBankName(vip.getBankName());
            vipModel.setBankNumber(vip.getBankNumber());
            vipModel.setAddress(vip.getAddress());
            res = vipMapper.updateByPrimaryKey(vipModel);
        }
        return res;
    }

    @Override
    public List<Vip> getAllVip() {
        List<Vip> vips = vipMapper.selectByExample(new VipExample());
        return vips;
    }

    @Override
    public int removeVip(String vid) {
        int res = vipMapper.deleteByVid(vid);
        return res;
    }
}
