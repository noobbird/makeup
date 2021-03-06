package com.yang.controller;

import com.yang.dao.PocketRecordMapper;
import com.yang.dao.ProductMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.*;
import com.yang.service.*;
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

    @Autowired
    private PocketRecordService pocketRecordService;

    @ResponseBody
    @RequestMapping(value = "/findCartByWhere")
    public List<Cart> findCartByWhere(HttpServletRequest request, @RequestParam("productType") String productType) {
        Cart cart = new Cart();
        cart.setProdcutType(productType);
        cart.setVipId((String) request.getSession().getAttribute("userName"));
        return cartService.findCartByWhere(cart);

    }

    @ResponseBody
    @RequestMapping(value = "/purchase")
    public String purchase(HttpServletRequest request, @RequestParam("oId") String oId, @RequestParam("shoppingMethod") String shoppingMethod) {
        String returnFlag = "";
        Float amount = new Float(0.00);
        String[] oids = oId.split(",");
        List<ShoppingRecord> shoppingRecordList = new ArrayList<>();
        if (shoppingMethod.equals("1")) {
            for (String oid : oids) {
                Cart cart = cartService.getCartById(Integer.parseInt(oid));
                Product product = productService.getProductByKey(cart.getProductId());
                //创建购买记录
                ShoppingRecord shoppingRecord = new ShoppingRecord();
                shoppingRecord.setVipId(cart.getVipId());
                shoppingRecord.setProductId(cart.getProductId());
                shoppingRecord.setProductCount(cart.getProductCount());

                shoppingRecord.setProductPrice(product.getCashPrice());
                Float total = shoppingRecord.getProductPrice() * shoppingRecord.getProductCount();
                shoppingRecord.setTotalPrice(total);
                //记录消费金额
                amount = amount + total;

                shoppingRecordList.add(shoppingRecord);
            }
            try {
                Vip vip = vipService.getVipByVid((String) request.getSession().getAttribute("userName"));
                if (amount > vip.getBanlance()) {
                    returnFlag = Constant.BALANCEF_NOT_ENOUGH;
                } else {
                    for (ShoppingRecord shoppingRecord : shoppingRecordList) {
                        shoppingRecordService.insertShoppingRecord(shoppingRecord);
                    }
                    //插入资金记录
                    PocketRecord pocketRecord = new PocketRecord();
                    pocketRecord.setType(Constant.POCKET_SHOPPING);
                    pocketRecord.setAmount(amount);
                    pocketRecord.setPointOrCash(Constant.SHOPPING_BY_CASH);
                    pocketRecord.setRelatedVipid(vip.getVid());

                    pocketRecordService.insertPocketRecord(pocketRecord);

                    //修改用户余额
                    Vip newVip = new Vip();
                    newVip.setoId(vip.getoId());
                    newVip.setBanlance(vip.getBanlance() - amount);
                    vipService.updateVipByVid(newVip);
                    returnFlag = Constant.SUCCESS;
                }
            } catch (Exception e) {
                e.printStackTrace();
                returnFlag = Constant.FAILURE;
            }
        } else {
            for (String oid : oids) {
                Cart cart = cartService.getCartById(Integer.parseInt(oid));
                Product product = productService.getProductByKey(cart.getProductId());
                //创建购买记录
                ShoppingRecord shoppingRecord = new ShoppingRecord();
                shoppingRecord.setVipId(cart.getVipId());
                shoppingRecord.setProductId(cart.getProductId());
                shoppingRecord.setProductCount(cart.getProductCount());

                shoppingRecord.setProductPrice(product.getPointPrice());
                Float total = shoppingRecord.getProductPrice() * shoppingRecord.getProductCount();
                shoppingRecord.setTotalPrice(total);
                //记录消费金额
                amount = amount + total;

                shoppingRecordList.add(shoppingRecord);
            }
            try {
                Vip vip = vipService.getVipByVid((String) request.getSession().getAttribute("userName"));
                if (amount > vip.getPoints()) {
                    returnFlag = Constant.BALANCEF_NOT_ENOUGH;
                } else {
                    for (ShoppingRecord shoppingRecord : shoppingRecordList) {
                        shoppingRecordService.insertShoppingRecord(shoppingRecord);
                    }
                    //插入资金记录
                    PocketRecord pocketRecord = new PocketRecord();
                    pocketRecord.setType(Constant.POCKET_SHOPPING);
                    pocketRecord.setAmount(amount);
                    pocketRecord.setPointOrCash(Constant.SHOPPING_BY_CASH);
                    pocketRecord.setRelatedVipid(vip.getVid());

                    pocketRecordService.insertPocketRecord(pocketRecord);

                    //修改用户余额
                    Vip newVip = new Vip();
                    newVip.setoId(vip.getoId());
                    newVip.setPoints(vip.getPoints() - amount);
                    vipService.updateVipByVid(newVip);
                    returnFlag = Constant.SUCCESS;
                }
            } catch (Exception e) {
                e.printStackTrace();
                returnFlag = Constant.FAILURE;
            }
        }


        return returnFlag;

    }

    @ResponseBody
    @RequestMapping(value = "/addProductToCart")
    public String addProductToCart(HttpServletRequest request, Cart cart) {
        //作为参数查询购物车中是否存在该商品
        Cart paramCart = new Cart();
        String vId = (String) request.getSession().getAttribute("userName");
        cart.setVipId(vId);
        paramCart.setProductId(cart.getProductId());
        paramCart.setVipId(cart.getVipId());
        int flag = 0;
        try {
            paramCart = cartService.findVipCartWithProductId(paramCart);
            if (paramCart != null) {
                paramCart.setProductCount(paramCart.getProductCount() + cart.getProductCount());
                flag = cartService.updateCartByKey(paramCart);

            } else {
                flag = cartService.insertCart(cart);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return String.valueOf(flag);
    }

    @ResponseBody
    @RequestMapping(value = "/updateCartCount")
    public String updateCartCount(HttpServletRequest request, Cart cart) {
        int flag = cartService.updateCartByKey(cart);
        if (flag == 1)
            return Constant.SUCCESS;
        else
            return Constant.FAILURE;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteCart")
    public String deleteCart(@RequestParam("oId") String oId) {
        String returnFlag = Constant.SUCCESS;
        String[] oids = oId.split(",");
        for (String id : oids) {
            try {
                cartService.deleteCart(Integer.valueOf(id));
            } catch (Exception e) {
                e.printStackTrace();
                returnFlag = Constant.FAILURE;
            }
        }
        return returnFlag;
    }

}
