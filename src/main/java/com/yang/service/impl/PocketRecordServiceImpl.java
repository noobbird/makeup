package com.yang.service.impl;

import com.yang.dao.PocketRecordMapper;
import com.yang.domain.PocketRecord;
import com.yang.domain.PocketRecordExample;
import com.yang.service.PocketRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("pocketRecordService")
public class PocketRecordServiceImpl implements PocketRecordService
{
    @Autowired
    private PocketRecordMapper pocketRecordMapper;
    @Override
    public List<PocketRecord> findPocketRecordByWhere(PocketRecord pocketRecord) {
        PocketRecordExample pocketRecordExample = new PocketRecordExample();
        addCriteria(pocketRecordExample.createCriteria(),pocketRecord);

        return pocketRecordMapper.selectByExample(pocketRecordExample);
    }

    @Override
    public int insertPocketRecord(PocketRecord pocketRecord)  throws Exception {
        return pocketRecordMapper.insert(pocketRecord);
    }

    public void addCriteria(PocketRecordExample.Criteria criteria,PocketRecord pocketRecord){
        if (pocketRecord.getId()!=null){
            criteria.andIdEqualTo(pocketRecord.getId());
        }
        if (pocketRecord.getType()!=null){
            criteria.andTypeEqualTo(pocketRecord.getType());
        }
        if (pocketRecord.getAmount()!=null){
            criteria.andAmountEqualTo(pocketRecord.getAmount());
        }
        if (pocketRecord.getRelatedVipid()!=null){
            criteria.andRelatedVipidEqualTo(pocketRecord.getRelatedVipid());
        }
        if (pocketRecord.getTime()!=null){
            criteria.andTimeEqualTo(pocketRecord.getTime());
        }
        if (pocketRecord.getPointOrCash()!=null){
            criteria.andPointOrCashEqualTo(pocketRecord.getPointOrCash());
        }
    }
}
