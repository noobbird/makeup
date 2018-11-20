package com.yang.controller;

import com.yang.domain.Cart;
import com.yang.domain.Product;
import com.yang.service.ProductService;
import com.yang.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;


    @ResponseBody
    @RequestMapping(value = "/findProduceByWhere")
    public List<Product> findProduceByWhere(@RequestParam("productType") String productType){
        Product product = new Product();
        product.setProdcutType(productType);
        return productService.findProdectByWhere(product);

    }
}
