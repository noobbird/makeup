package com.yang.service.impl;

import com.yang.dao.ProductMapper;
import com.yang.domain.Product;
import com.yang.domain.ProductExample;
import com.yang.service.ProductService;
import com.yang.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<ProductVO> findProdectByWhere(ProductVO productVO) {
        ProductExample productExample = new ProductExample();
        ProductExample.Criteria criteria = productExample.createCriteria();

        return toProductVOlist(productMapper.selectByExample(productExample));
    }

    @Override
    public Product getProductByKey(int productId) {
        return productMapper.selectByPrimaryKey(productId);
    }


    public List<ProductVO> toProductVOlist(List<Product> productList){
        List<ProductVO> productVOList =new ArrayList<>();

        for(Product product: productList){
            productVOList.add(toProductVO(product));
        }
        return productVOList;
    }

    public ProductVO toProductVO(Product product){
        ProductVO productVO = new ProductVO();
        if (product.getCashPrice()!=null){
            productVO.setCashPrice(product.getCashPrice().toString());
        }
        productVO.setDescription(product.getDescription());
        productVO.setPicUrl(productVO.getPicUrl());
        if (product.getPointPrice()!=null){
            productVO.setPointPrice(product.getPointPrice().toString());
        }
        productVO.setProdcutType(product.getProdcutType());
        if (product.getProductHot()!=null){
            productVO.setProductHot(product.getProductHot().toString());
        }
        if (product.getSaleCount()!=null){
            productVO.setSaleCount(product.getSaleCount().toString());
        }
        if (product.getProductId()!=null){
            productVO.setProductId(product.getProductId().toString());
        }
        productVO.setProductName(product.getProductName());

        return productVO;
    }

    public Product toProduct(ProductVO productVO){
        Product product =new Product();
        if (productVO.getProductId()!=null){
            product.setProductId(Integer.parseInt(productVO.getProductId()));
        }
        product.setProductName(productVO.getProductName());
        product.setDescription(productVO.getDescription());
        product.setPicUrl(productVO.getPicUrl());
        product.setProdcutType(productVO.getProdcutType());
        if (productVO.getCashPrice()!=null){
            product.setCashPrice(Float.parseFloat(productVO.getCashPrice()));
        }
        if (productVO.getPointPrice()!=null){
            product.setPointPrice(Float.parseFloat(productVO.getPointPrice()));
        }
        if (productVO.getSaleCount()!=null ){
            product.setSaleCount(Integer.parseInt(productVO.getSaleCount()));
        }
        if (productVO.getProductHot()!=null){
            product.setProductHot(Integer.parseInt(productVO.getProductHot()));
        }
        return product;
    }
}
