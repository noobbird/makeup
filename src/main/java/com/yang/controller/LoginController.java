package com.yang.controller;

import com.sun.deploy.net.HttpResponse;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping(value = "/login")
    public String login(HttpRequest req, HttpResponse res){
        System.out.println("enter");
        return "login";
    }
}
