package com.yang.service;

import com.yang.domain.Product;
import com.yang.vo.ProductVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {
    List<ProductVO> findProdectByWhere(ProductVO productVO);
    Product getProductByKey(int productId);
}
