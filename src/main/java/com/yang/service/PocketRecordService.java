package com.yang.service;

import com.yang.domain.PocketRecord;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PocketRecordService {

    List<PocketRecord> findPocketRecordByWhere(PocketRecord pocketRecord);
    int insertPocketRecord (PocketRecord pocketRecord) throws  Exception;
}
