package com.yang.controller;

import com.yang.dao.ProductMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.Cart;
import com.yang.domain.Product;
import com.yang.domain.ShoppingRecord;
import com.yang.domain.Vip;
import com.yang.service.CartService;
import com.yang.service.ProductService;
import com.yang.service.ShoppingRecordService;
import com.yang.service.VipService;
import com.yang.util.Constant;
import com.yang.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CartService cartService;
    @Autowired
    private ShoppingRecordService shoppingRecordService;

    @Autowired
    private VipService vipService;

    @ResponseBody
    @RequestMapping(value = "/findCartByWhere")
    public List<Cart> findCartByWhere(HttpServletRequest request){
        Cart cart = new Cart();
        cart.setVipId((String)request.getSession().getAttribute("userName"));
        return cartService.findCartByWhere(cart);

    }

    @ResponseBody
    @RequestMapping(value = "/purchase")
    public String purchase(HttpServletRequest request,@RequestParam("oId") String oId){
        String returnFlag="";
        Float amount =new Float(0.00);
        String[] oids= oId.split(",");
        List<ShoppingRecord> shoppingRecordList= new ArrayList<>();
        for (String oid:oids) {
            Cart cart =cartService.getCartById(Integer.parseInt(oid));
            Product product = productService.getProductByKey(cart.getProductId());
            //创建购买记录
            ShoppingRecord shoppingRecord = new ShoppingRecord();
            shoppingRecord.setVipId(cart.getVipId());
            shoppingRecord.setProductId(cart.getProductId());
            shoppingRecord.setProductCount(cart.getProductCount());
            shoppingRecord.setProductPrice(product.getCashPrice());
            Float total = shoppingRecord.getProductPrice()*shoppingRecord.getProductCount();
            shoppingRecord.setTotalPrice(total);
            //记录消费金额
            amount=amount+total;
            shoppingRecordList.add(shoppingRecord);
        }
        try {
            Vip vip=vipService.getVipByVid((String) request.getSession().getAttribute("userName"));
            if (amount>vip.getBanlance()){
                returnFlag= Constant.BALANCEF_NOT_ENOUGH;
            }else {
                for(ShoppingRecord shoppingRecord:shoppingRecordList){
                    shoppingRecordService.insertShoppingRecord(shoppingRecord);
                }
                vip.setBanlance(vip.getBanlance()-amount);
                vipService.updateVipByVid(vip);
                returnFlag=Constant.SUCCESS;
            }
        } catch (Exception e) {
            e.printStackTrace();
            returnFlag=Constant.FAILURE;
        }
        return returnFlag;

    }

    @ResponseBody
    @RequestMapping(value = "/addProductToCart")
    public String addProductToCart(HttpServletRequest request,Cart cart){
        //作为参数查询购物车中是否存在该商品
        Cart paramCart = new Cart();
        String vId = (String)request.getSession().getAttribute("userName");
        cart.setVipId(vId);
        paramCart.setProductId(cart.getProductId());
        paramCart.setVipId(cart.getVipId());
        List<Cart> carts =cartService.findCartByWhere(paramCart);
        int flag=0;
        if (carts.size()>0){
            paramCart =carts.get(0);
            paramCart.setProductCount(paramCart.getProductCount()+cart.getProductCount());
            flag= cartService.updateCartByKey(paramCart);

        }else {
            flag=  cartService.insertCart(cart);
        }
        return String.valueOf(flag);
    }

}
