package com.yang.service.impl;

import com.yang.dao.ShoppingRecordMapper;
import com.yang.domain.Page;
import com.yang.domain.ShoppingRecord;
import com.yang.domain.ShoppingRecordExample;
import com.yang.domain.VipExample;
import com.yang.service.ShoppingRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shoppingRecordService")
public class ShoppingRecordServiceImpl implements ShoppingRecordService {
    @Autowired
    private ShoppingRecordMapper shoppingRecordMapper;
    @Override
    public int insertShoppingRecord(ShoppingRecord shoppingRecord) {
        return shoppingRecordMapper.insert(shoppingRecord);
    }

    @Override
    public List<ShoppingRecord> selectShoppingRecordByWhere(ShoppingRecord shoppingRecord, Page page) throws Exception {
        ShoppingRecordExample example =new ShoppingRecordExample();
        example.setPage(page);
        addCriteria(example.createCriteria(),shoppingRecord);
        return shoppingRecordMapper.selectByExample(example);
    }

    @Override
    public int getTotalRowCountByWhere(ShoppingRecord shoppingRecord) throws Exception {
        ShoppingRecordExample example =new ShoppingRecordExample();
        addCriteria(example.createCriteria(),shoppingRecord);
        return shoppingRecordMapper.countByExample(example);
    }

    public void addCriteria(ShoppingRecordExample.Criteria criteria,ShoppingRecord shoppingRecord){
        if (shoppingRecord.getoId()!=null){
            criteria.andOIdEqualTo(shoppingRecord.getoId());
        }
        if (shoppingRecord.getProductId()!=null){
            criteria.andProductIdEqualTo(shoppingRecord.getProductId());
        }
        if (shoppingRecord.getVipId()!=null){
            criteria.andVipIdEqualTo(shoppingRecord.getVipId());
        }
     }
}
