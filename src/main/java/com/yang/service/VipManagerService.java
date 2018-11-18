package com.yang.service;

import com.yang.domain.ChargeMessage;
import com.yang.domain.Vip;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface VipManagerService {
    public List<Vip> getAllVip();
    public int removeVip(String vid);
    public Vip insert(Vip vip);
    public int update(Vip vip);
    public ChargeMessage charge(String vid, int amount);
}
