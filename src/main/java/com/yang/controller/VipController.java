package com.yang.controller;

import com.yang.domain.Vip;
import com.yang.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/vip")
public class VipController {
    @Autowired
    private VipService vipService;
    @ResponseBody
    @RequestMapping(value = "/getLoginVip")
    public Vip getLoginVip(HttpServletRequest request){
        Vip vip =new Vip();
        try {
            vip=vipService.getVipByVid((String) request.getSession().getAttribute("userName"));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return vip;
    }
}
