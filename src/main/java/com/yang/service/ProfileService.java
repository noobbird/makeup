package com.yang.service;

import com.yang.domain.Vip;
import org.springframework.stereotype.Service;

@Service
public interface ProfileService {
    public Vip getProfile(String vid);
}
