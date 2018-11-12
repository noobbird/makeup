package com.yang.service;

import org.springframework.stereotype.Service;

@Service
public interface LoginService {
    public int login(String username, String password);
    public int sulogin(String suname, String supass);
}
