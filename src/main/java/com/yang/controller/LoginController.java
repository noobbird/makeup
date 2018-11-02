package com.yang.controller;

import com.sun.deploy.net.HttpResponse;
import com.yang.domain.MyStatus;
import com.yang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    LoginService loginService;
    @ResponseBody
    @RequestMapping(value = "/login", method= RequestMethod.POST)
    public MyStatus login(HttpServletRequest req,String username, String userpswd){

        System.out.println("username: " + username);
        System.out.println("userpswd: " + userpswd);
        int res = loginService.login(username, userpswd);
        if(res == 0){
            HttpSession session = req.getSession();
            session.setAttribute("userName", username);
            req.setAttribute("userName",username);
            return new MyStatus(res);
        }
        else{
            return new MyStatus(res);
        }
    }
    @RequestMapping(value = "/main", method= RequestMethod.GET)
    public String main(HttpServletRequest req){
        HttpSession session = req.getSession();
        String name = (String)session.getAttribute("userName");
        System.out.println("name in session: " + name);
        if(null == name){
            return "redirect:/";
        }
        else{
            return "main";
        }

    }


}
