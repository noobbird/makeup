package com.yang.service;

import com.yang.domain.Cart;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    public List<Cart> getCart();

    /**
     *
     * 通过主键获取Cart
     * @param oId
     * @return
     */
     Cart getCartById(int oId );

    /**
     *
     * 通过输入条件查询
     * @param cart
     * @return
     */
    List<Cart> findCartByWhere(Cart cart);

    /**
     * 通过主键条件更新，输入对象中不为空则更新
     * @param cart
     * @return
     */
    int updateCartByKey(Cart cart);

    /**
     * 插入新的Cart
     * @param cart
     * @return 返回1或者0
     */
    int insertCart(Cart cart);

    /**
     * 删除购物车记录
     * @param oId
     * @return 1表示删除成功 0 表示删除失败
     */
    int deleteCart(Integer oId) throws Exception;

    Cart findVipCartWithProductId(Cart cart) throws  Exception;

}
