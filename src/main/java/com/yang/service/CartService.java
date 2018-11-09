package com.yang.service;

import com.yang.domain.Cart;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    public List<Cart> getCart();
     Cart getCartById(int oId );
    List<Cart> findCartByWhere(Cart cart);
    int updateCartByKey(Cart cart);

    int insertCart(Cart cart);
}
