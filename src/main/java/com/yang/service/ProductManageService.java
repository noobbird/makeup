package com.yang.service;

import com.yang.domain.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductManageService {

    List<Product> getAllProducts();
    int updateProductById(Product product);
    int addProduct(Product product);
    int removeProduct(int id);
}
