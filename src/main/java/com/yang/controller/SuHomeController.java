package com.yang.controller;

import com.yang.domain.MyStatus;
import com.yang.domain.Vip;
import com.yang.service.VipManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SuHomeController {
    @Autowired
    VipManagerService vipManagerService;

    @RequestMapping(value="/sumain")
    public String suMain(HttpServletRequest req){
        HttpSession session = req.getSession();
        String suname = (String)session.getAttribute("suName");
        Boolean isSu = (Boolean)session.getAttribute("isSu");
        if(suname != null & isSu != null && isSu == true)
            return "sumain";
        else
            return "redirect:admin";

    }

    @RequestMapping(value = "/vipmanage")
    public String vipmanage(HttpServletRequest req){
        List<Vip> vipList = vipManagerService.getAllVip();
        req.setAttribute("vipList", vipList);
        return "vipmanage";
    }
    @RequestMapping(value = "/addvip")
    public String addvip(HttpServletRequest req){
//        List<Vip> vipList = vipManagerService.getAllVip();
//        req.setAttribute("vipList", vipList);
        return "addvip";
    }

    @ResponseBody
    @RequestMapping(value = "/insertVip")
    public Vip insertVip(HttpServletRequest req, Vip vip){
           Vip resVip = vipManagerService.insert(vip);
//        List<Vip> vipList = vipManagerService.getAllVip();
//        req.setAttribute("vipList", vipList);
        return resVip;
    }
    @ResponseBody
    @RequestMapping(value = "/modifyVip")
    public MyStatus modifyVip(HttpServletRequest req, Vip vip){
        int res = vipManagerService.update(vip);
        return new MyStatus(res);
    }

    @RequestMapping(value = "/charge")
    public String charge(HttpServletRequest req, Vip vip){
        return "charge";
    }





}
