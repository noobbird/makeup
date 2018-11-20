package com.yang.controller;

import com.yang.domain.*;
import com.yang.service.ProductManageService;
import com.yang.service.RecommendHistoryService;
import com.yang.service.VipManagerService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller
public class SuHomeController {
    @Autowired
    VipManagerService vipManagerService;
    @Autowired
    ProductManageService productManageService;
    @Autowired
    RecommendHistoryService recommendHistoryService;

    @RequestMapping(value = "/sumain")
    public String suMain(HttpServletRequest req) {
        HttpSession session = req.getSession();
        String suname = (String) session.getAttribute("suName");
        Boolean isSu = (Boolean) session.getAttribute("isSu");
        if (suname != null & isSu != null && isSu == true)
            return "sumain";
        else
            return "redirect:admin";

    }

    @RequestMapping(value = "/vipmanage")
    public String vipmanage(HttpServletRequest req) {
        List<Vip> vipList = vipManagerService.getAllVip();
        req.setAttribute("vipList", vipList);
        return "vipmanage";
    }

    @RequestMapping(value = "/addvip")
    public String addvip(HttpServletRequest req) {
//        List<Vip> vipList = vipManagerService.getAllVip();
//        req.setAttribute("vipList", vipList);
        return "addvip";
    }

    @ResponseBody
    @RequestMapping(value = "/insertVip")
    public Vip insertVip(HttpServletRequest req, Vip vip) {
        Vip resVip = vipManagerService.insert(vip);
//        List<Vip> vipList = vipManagerService.getAllVip();
//        req.setAttribute("vipList", vipList);
        return resVip;
    }

    @ResponseBody
    @RequestMapping(value = "/modifyVip")
    public MyStatus modifyVip(HttpServletRequest req, Vip vip) {
        int res = vipManagerService.update(vip);
        return new MyStatus(res);
    }

    @RequestMapping(value = "/charge")
    public String charge(HttpServletRequest req, Vip vip) {
        return "charge";
    }

    @ResponseBody
    @RequestMapping(value = "/api/charge")
    public ChargeMessage chargeApi(HttpServletRequest req, String vid, Integer amount) {
        ChargeMessage chargeMessage = vipManagerService.charge(vid, amount);
        return chargeMessage;
    }

    @ResponseBody
    @RequestMapping(value = "/api/getvips")
    public List<Vip> getvips(HttpServletRequest req) {
        List<Vip> vips = vipManagerService.getAllVip();
        return vips;
    }

    @RequestMapping(value = "/productmanage")
    public String productmanage(HttpServletRequest req) {
        return "productmanage";
    }


    @ResponseBody
    @RequestMapping(value = "/api/getproducts")
    public List<Product> getAllProducts() {
        return productManageService.getAllProducts();
    }

    @RequestMapping(value = "addproduct")
    public String addproduct() {
        return "addproduct";
    }

    @RequestMapping(value = "updateproduct")
    public int updateProduct(Product product) {
        int res = productManageService.updateProductById(product);
        return res;
    }

    @ResponseBody
    @RequestMapping(value = "/api/removeprodcut")
    public MyStatus removeprodcut(int id) throws Exception {
        int res = productManageService.removeProduct(id);
        return new MyStatus(res);
    }

    @RequestMapping(value = "/api/addproducts")
    public String  addPorducts(HttpServletRequest request, Product product, MultipartFile pictureFile) throws Exception {
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        String url = request.getSession().getServletContext().getRealPath("").toString() + "\\upload\\";
        System.out.println(url);
        pictureFile.transferTo(new File(url + "/" + name + "." + ext));
        product.setPicUrl("/upload/" + name + "." + ext);
        product.setSaleCount(0);
        product.setProductHot(0);
        int res = productManageService.addProduct(product);
        return "redirect:/sumain";
    }

    @RequestMapping(value = "recommendhis")
    public String recommedhis() {
        return "recommendhis";
    }
    @ResponseBody
    @RequestMapping(value = "/api/recommndhis")
    public List<RecommendHis> rcmdHis() {
        return recommendHistoryService.recomendHis();
    }
}