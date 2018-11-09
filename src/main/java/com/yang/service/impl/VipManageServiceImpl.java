package com.yang.service.impl;

import com.yang.dao.VidGeneratorMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.VidGenerator;
import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import com.yang.service.VipManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Service
public class VipManageServiceImpl implements VipManagerService {
    @Autowired
    VipMapper vipMapper;
    @Autowired
    VidGeneratorMapper vidGeneratorMapper;

    @Override
    public Vip insert(Vip vip) {
        BigDecimal initialBanlance = new BigDecimal(0.00);
        BigDecimal initialPoints = new BigDecimal(0.00);
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
    public int update(Vip vip) {
        int res = vipMapper.updateByPrimaryKey(vip);
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
