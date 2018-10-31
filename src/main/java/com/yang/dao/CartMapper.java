package com.yang.dao;

import com.yang.domain.Cart;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartMapper {
    public List<Cart> getCart();
    public Cart getCartById(int id);
}
