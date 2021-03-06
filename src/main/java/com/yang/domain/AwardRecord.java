package com.yang.domain;

import java.math.BigDecimal;
import java.util.Date;

public class AwardRecord {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private Integer oId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.VID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private String vid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.AWARD_TYPE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private String awardType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.AWARD_AMOUNT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private float awardAmount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.SERVICE_FEE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private float serviceFee;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.RELATED_VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private String relatedVip;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AWARD_RECORD.AWARD_TIME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private Date awardTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.O_ID
     *
     * @return the value of AWARD_RECORD.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public Integer getoId() {
        return oId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.O_ID
     *
     * @param oId the value for AWARD_RECORD.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setoId(Integer oId) {
        this.oId = oId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.VID
     *
     * @return the value of AWARD_RECORD.VID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getVid() {
        return vid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.VID
     *
     * @param vid the value for AWARD_RECORD.VID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setVid(String vid) {
        this.vid = vid == null ? null : vid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.AWARD_TYPE
     *
     * @return the value of AWARD_RECORD.AWARD_TYPE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getAwardType() {
        return awardType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.AWARD_TYPE
     *
     * @param awardType the value for AWARD_RECORD.AWARD_TYPE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setAwardType(String awardType) {
        this.awardType = awardType == null ? null : awardType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.AWARD_AMOUNT
     *
     * @return the value of AWARD_RECORD.AWARD_AMOUNT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public float getAwardAmount() {
        return awardAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.AWARD_AMOUNT
     *
     * @param awardAmount the value for AWARD_RECORD.AWARD_AMOUNT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setAwardAmount(float awardAmount) {
        this.awardAmount = awardAmount == 0 ? 0 : awardAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.SERVICE_FEE
     *
     * @return the value of AWARD_RECORD.SERVICE_FEE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public float getServiceFee() {
        return serviceFee;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.SERVICE_FEE
     *
     * @param serviceFee the value for AWARD_RECORD.SERVICE_FEE
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setServiceFee(float serviceFee) {
        this.serviceFee = serviceFee;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.RELATED_VIP
     *
     * @return the value of AWARD_RECORD.RELATED_VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getRelatedVip() {
        return relatedVip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.RELATED_VIP
     *
     * @param relatedVip the value for AWARD_RECORD.RELATED_VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setRelatedVip(String relatedVip) {
        this.relatedVip = relatedVip == null ? null : relatedVip.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AWARD_RECORD.AWARD_TIME
     *
     * @return the value of AWARD_RECORD.AWARD_TIME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public Date getAwardTime() {
        return awardTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AWARD_RECORD.AWARD_TIME
     *
     * @param awardTime the value for AWARD_RECORD.AWARD_TIME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setAwardTime(Date awardTime) {
        this.awardTime = awardTime;
    }
}