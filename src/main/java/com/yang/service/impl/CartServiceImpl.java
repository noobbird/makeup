package com.yang.service.impl;

import com.yang.dao.CartMapper;
import com.yang.domain.Cart;
import com.yang.domain.CartExample;
import com.yang.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cartService")
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;
    @Override
    public List<Cart> getCart() {
        System.out.println("here");
        return cartMapper.selectByExample(new CartExample());

    }


    @Override
    public Cart getCartById(int oId) {
        return cartMapper.selectByPrimaryKey(oId);
    }

    @Override
    public List<Cart> findCartByWhere(Cart cart) {
        CartExample cartExample = new CartExample();
        CartExample.Criteria criteria = cartExample.createCriteria();
        addCriteria(criteria,cart);
        return cartMapper.selectByExample(cartExample);
    }

    @Override
    public int updateCartByKey(Cart cart) {
        return cartMapper.updateByPrimaryKey(cart);
    }

    @Override
    public int insertCart(Cart cart) {
        return cartMapper.insert(cart);
    }

    public void addCriteria( CartExample.Criteria criteria,Cart cart){
        if (cart.getoId()!=null){
            criteria.andOIdEqualTo(cart.getoId());
        }
        if (cart.getProductId()!=null){
            criteria.andProductIdEqualTo(cart.getProductId());
        }
        if (cart.getVipId()!=null){
            criteria.andVipIdEqualTo(cart.getVipId());
        }
    }
}
