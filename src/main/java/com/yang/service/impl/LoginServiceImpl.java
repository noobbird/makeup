package com.yang.service.impl;

import com.yang.dao.VipMapper;
import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import com.yang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{
    @Autowired
    private VipMapper vipMapper;
    @Override
    public int login(String username, String password) {
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(username).andVPasswordEqualTo(password);
        List<Vip> vipList = vipMapper.selectByExample(vipExample);
        if(vipList.size() == 0)
            return 0;
        else
            return 1;
    }
}
