package com.yang.service.impl;

import com.yang.dao.VipMapper;
import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import com.yang.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("vipService")
public class VipServiceImpl implements VipService {

    @Autowired
    private VipMapper vipMapper;
    @Override
    public Vip getVipByVid(String vid) throws Exception {
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(vid);
        List<Vip> vipList =vipMapper.selectByExample(vipExample);
        return vipList.get(0);
    }

    @Override
    public int updateVipByVid(Vip vip) {
        return vipMapper.updateVipByVid(vip);
    }
}
