package com.yang.service.impl;

import com.yang.dao.AwardRecordMapper;
import com.yang.domain.AwardRecord;
import com.yang.domain.RecommendHis;
import com.yang.service.RecommendHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RecommendHistoryServiceImpl implements RecommendHistoryService {
    @Autowired
    AwardRecordMapper awardRecordMapper;
    @Override
    public List<RecommendHis> recomendHis() {
        return awardRecordMapper.selectRcmdHis();
    }
}
