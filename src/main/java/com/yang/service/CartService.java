package com.yang.service;

import com.yang.domain.Cart;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    public List<Cart> getCart();
    public Cart getCartById(int id );
}
