package com.yang.service;

import com.yang.domain.ShoppingRecord;
import org.springframework.stereotype.Service;

@Service
public interface ShoppingRecordService {
    int insertShoppingRecord(ShoppingRecord shoppingRecord);
}
