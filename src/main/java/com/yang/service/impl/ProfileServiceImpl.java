package com.yang.service.impl;

import com.yang.dao.VipMapper;
import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import com.yang.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfileServiceImpl implements ProfileService {
    @Autowired
    VipMapper vipMapper;

    @Override
    public Vip getProfile(String vid) {
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(vid);
        List<Vip> vipList = vipMapper.selectByExample(vipExample);
        if(vipList.size() != 1){
            System.out.println("multiple user or no user!");
            return null;
        }
        else{
            return vipList.get(0);
        }
    }
}
