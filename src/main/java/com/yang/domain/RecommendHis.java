package com.yang.domain;

import java.util.Date;

public class RecommendHis {
    private String vid;
    private String vName;
    private String relatedVid;
    private String relatedVname;
    private Date   recommendTime;

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public String getRelatedVid() {
        return relatedVid;
    }

    public void setRelatedVid(String relatedVid) {
        this.relatedVid = relatedVid;
    }

    public String getRelatedVname() {
        return relatedVname;
    }

    public void setRelatedVname(String relatedVname) {
        this.relatedVname = relatedVname;
    }

    public Date getRecommendTime() {
        return recommendTime;
    }

    public void setRecommendTime(Date recommendTime) {
        this.recommendTime = recommendTime;
    }

    @Override
    public String toString() {
        return "RecommendHis{" +
                "vid='" + vid + '\'' +
                ", vName='" + vName + '\'' +
                ", relatedVid='" + relatedVid + '\'' +
                ", relatedVname='" + relatedVname + '\'' +
                ", recommendTime=" + recommendTime +
                '}';
    }
}
