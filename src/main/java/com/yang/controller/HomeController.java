package com.yang.controller;

import com.yang.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @Autowired
    CartService cartService;
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String printHello(Model model) {
        System.out.println(cartService.getCart());
        return "index";
    }


}