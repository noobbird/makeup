package com.yang.controller;

import com.yang.domain.AwardRecord;
import com.yang.domain.Vip;
import com.yang.service.CartService;
import com.yang.service.ProfileService;
import com.yang.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    CartService cartService;
    @Autowired
    ProfileService profileService;
    @Autowired
    VipService vipService;
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String printHello(Model model) {
        System.out.println(cartService.getCart());
        return "index";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(Model model) {
        System.out.println(cartService.getCart());
        return "welcome";
    }

    @RequestMapping(value = "/profile")
    public String profile(HttpServletRequest request){
        HttpSession session = request.getSession();
        String vid = (String)session.getAttribute("userName");
        Vip vip = profileService.getProfile(vid);
        request.setAttribute("vip", vip);
        return "profile";

    }

    @RequestMapping(value = "/team")
    public String team(HttpServletRequest request){
        return "team";

    }

    @RequestMapping(value = "/cart")
    public String cart(HttpServletRequest request){
        HttpSession session = request.getSession();
        String vid = (String)session.getAttribute("userName");
        Vip vip = profileService.getProfile(vid);
        request.setAttribute("vip", vip);
        return "cart";

    }

    /**
     * 跳转到product.jsp
     * @param request
     * @return
     */
    @RequestMapping(value = "/product")
    public String product(HttpServletRequest request){
        HttpSession session = request.getSession();
        String vid = (String)session.getAttribute("userName");
        Vip vip = profileService.getProfile(vid);
        request.setAttribute("vip", vip);
        return "product";

    }

    @RequestMapping(value = "/wallethis")
    public String wallethis(HttpServletRequest request){
        return "wallethis";

    }

    @RequestMapping(value = "/wallet")
    public String wallet(HttpServletRequest request){
        return "wallet";

    }
    @RequestMapping(value = "/jifen")
    public String jifen(HttpServletRequest request){
        return "jifen";

    }

    @RequestMapping(value = "/pswd")
    public String pswd(HttpServletRequest request){
        return "pswd";

    }
    @RequestMapping(value = "/shoppingRecord")
    public String shoppingRecord(HttpServletRequest request){
        return "shoppingRecord";

    }
    @ResponseBody
    @RequestMapping(value = "/recmdhis")
    public List<AwardRecord> recmdhis(HttpServletRequest request){
        HttpSession session = request.getSession();
        String vid = (String)session.getAttribute("userName");
        List<AwardRecord> awardRecords = vipService.getRecmdHis(vid);
        return awardRecords;
    }




}