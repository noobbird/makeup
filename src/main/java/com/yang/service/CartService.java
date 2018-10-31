package com.yang.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    public List<Cart> getCart();
    public Cart getCartById(int id );
}
