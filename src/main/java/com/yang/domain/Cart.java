package com.yang.domain;

import java.io.Serializable;

public class Cart {
    private int id;
    private String vipId;
    private int productId;
    private int count;

    public int getId() {
        return id;
    }

    public String getVipId() {
        return vipId;
    }

    public void setVipId(String vipId) {
        this.vipId = vipId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", vipId='" + vipId + '\'' +
                ", productId=" + productId +
                ", count=" + count +
                '}';
    }
}
