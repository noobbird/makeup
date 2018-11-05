package com.yang.controller;

import com.yang.domain.Vip;
import com.yang.service.CartService;
import com.yang.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @Autowired
    CartService cartService;
    @Autowired
    ProfileService profileService;
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String printHello(Model model) {
        System.out.println(cartService.getCart());
        return "index";
    }

    @RequestMapping(value = "/profile")
    public String profile(HttpServletRequest request){
        HttpSession session = request.getSession();
        String vid = (String)session.getAttribute("userName");
        Vip vip = profileService.getProfile(vid);
        request.setAttribute("vip", vip);
        return "profile";

    }


}