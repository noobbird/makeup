package com.yang.service.impl;

import com.yang.dao.AdminMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.Admin;
import com.yang.domain.AdminExample;
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
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public int login(String username, String password) {
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andVidEqualTo(username).andVPasswordEqualTo(password);
        List<Vip> vipList = vipMapper.selectByExample(vipExample);
        if(vipList.size() != 0)
            return 0;
        else
            return 1;
    }

    @Override
    public int sulogin(String suname, String supass) {
        AdminExample adminExample = new AdminExample();
        adminExample.createCriteria().andAdminNameEqualTo(suname).andAdminPasswordEqualTo(supass);
        List<Admin> adminList = adminMapper.selectByExample(adminExample);
        if(adminList.size() != 0)
            return 0;
        else
            return 1;
    }
}
