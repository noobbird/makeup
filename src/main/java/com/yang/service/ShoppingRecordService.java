package com.yang.service;

import com.yang.domain.Page;
import com.yang.domain.ShoppingRecord;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ShoppingRecordService {
    int insertShoppingRecord(ShoppingRecord shoppingRecord);
    List<ShoppingRecord> selectShoppingRecordByWhere(ShoppingRecord shoppingRecord, Page page) throws  Exception;
    int getTotalRowCountByWhere(ShoppingRecord shoppingRecord) throws  Exception;

}
