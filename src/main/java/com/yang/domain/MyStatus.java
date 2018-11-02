package com.yang.domain;

public class MyStatus {
    private int code;

    public MyStatus(int code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Status{" +
                "code=" + code +
                '}';
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
