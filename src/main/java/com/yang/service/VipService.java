package com.yang.service;

import com.yang.domain.AwardRecord;
import com.yang.domain.Vip;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface VipService {
      Vip getVipByVid(String vid) throws  Exception;

      int updateVipByVid (Vip vip);

      List<AwardRecord> getRecmdHis(String vid);
}
