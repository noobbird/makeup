package com.yang.service;

import com.yang.domain.AwardRecord;
import com.yang.domain.RecommendHis;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RecommendHistoryService {
    List<RecommendHis> recomendHis();
}
