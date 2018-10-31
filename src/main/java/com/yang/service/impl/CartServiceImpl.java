package com.yang.service.impl;

import com.yang.dao.CartMapper;
import com.yang.domain.Cart;
import com.yang.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("cartService")
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;
    @Override
    public List<Cart> getCart() {
        System.out.println("here");
        return cartMapper.getCart();
    }

    @Override
    public Cart getCartById(int id) {
        return null;
    }
}
