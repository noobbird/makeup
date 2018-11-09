package com.yang.service;

import com.yang.domain.Vip;
import org.springframework.stereotype.Service;

@Service
public interface VipService {
      Vip getVipByVid(String vid) throws  Exception;

      int updateVipByVid (Vip vip);
}
