package com.yang.service.impl;

import com.yang.dao.ShoppingRecordMapper;
import com.yang.domain.ShoppingRecord;
import com.yang.service.ShoppingRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("shoppingRecordService")
public class ShoppingRecordServiceImpl implements ShoppingRecordService {
    @Autowired
    private ShoppingRecordMapper shoppingRecordMapper;
    @Override
    public int insertShoppingRecord(ShoppingRecord shoppingRecord) {
        return shoppingRecordMapper.insert(shoppingRecord);
    }
}
