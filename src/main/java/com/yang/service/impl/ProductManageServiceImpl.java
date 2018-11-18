package com.yang.service.impl;

import com.yang.dao.ProductMapper;
import com.yang.domain.Product;
import com.yang.domain.ProductExample;
import com.yang.service.ProductManageService;
import com.yang.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductManageServiceImpl implements ProductManageService {
    @Autowired
    ProductMapper productMapper;
    @Override
    public List<Product> getAllProducts() {
        return productMapper.selectByExample(new ProductExample());
    }

    @Override
    public int updateProductById(Product product) {
        int res = productMapper.updateByPrimaryKey(product);
        return res;
    }

    @Override
    public int addProduct(Product product) {
        int res = productMapper.insert(product);
        return res;
    }

    public int removeProduct(int id){
        int res = productMapper.deleteByPrimaryKey(id);
        return res;
    }
}
