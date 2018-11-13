package com.yang.domain;

public class ChargeMessage {
    private int code;
    private String errMsg;
    private String vid;
    private String vname;
    private float banlance;

    public int getCode() {
        return code;
    }

    public String getErrMsg() {
        return errMsg;
    }

    public String getVid() {
        return vid;
    }

    public String getVname() {
        return vname;
    }

    public float getBanlance() {
        return banlance;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public void setBanlance(float banlance) {
        this.banlance = banlance;
    }

    @Override
    public String toString() {
        return "ChargeMessage{" +
                "code=" + code +
                ", errMsg='" + errMsg + '\'' +
                ", vid='" + vid + '\'' +
                ", vname='" + vname + '\'' +
                ", banlance='" + banlance + '\'' +
                '}';
    }
}
