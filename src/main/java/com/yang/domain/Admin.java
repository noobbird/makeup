package com.yang.domain;

public class Admin {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ADMIN.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private Integer oId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ADMIN.ADMIN_NAME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private String adminName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ADMIN.ADMIN_PASSWORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    private String adminPassword;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ADMIN.O_ID
     *
     * @return the value of ADMIN.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public Integer getoId() {
        return oId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ADMIN.O_ID
     *
     * @param oId the value for ADMIN.O_ID
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setoId(Integer oId) {
        this.oId = oId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ADMIN.ADMIN_NAME
     *
     * @return the value of ADMIN.ADMIN_NAME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getAdminName() {
        return adminName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ADMIN.ADMIN_NAME
     *
     * @param adminName the value for ADMIN.ADMIN_NAME
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ADMIN.ADMIN_PASSWORD
     *
     * @return the value of ADMIN.ADMIN_PASSWORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getAdminPassword() {
        return adminPassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ADMIN.ADMIN_PASSWORD
     *
     * @param adminPassword the value for ADMIN.ADMIN_PASSWORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    @Override
    public String toString() {
        return "Admin{" +
                "oId=" + oId +
                ", adminName='" + adminName + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                '}';
    }
}