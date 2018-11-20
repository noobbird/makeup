package com.yang.service;

import com.yang.domain.Product;
import com.yang.vo.ProductVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {
    List<Product> findProdectByWhere(Product product);
    Product getProductByKey(int productId);
}
