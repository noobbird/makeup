package com.yang.domain;

import java.util.ArrayList;
import java.util.List;

public class AdminExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public AdminExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOIdIsNull() {
            addCriterion("O_ID is null");
            return (Criteria) this;
        }

        public Criteria andOIdIsNotNull() {
            addCriterion("O_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOIdEqualTo(Integer value) {
            addCriterion("O_ID =", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdNotEqualTo(Integer value) {
            addCriterion("O_ID <>", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdGreaterThan(Integer value) {
            addCriterion("O_ID >", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("O_ID >=", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdLessThan(Integer value) {
            addCriterion("O_ID <", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdLessThanOrEqualTo(Integer value) {
            addCriterion("O_ID <=", value, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdIn(List<Integer> values) {
            addCriterion("O_ID in", values, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdNotIn(List<Integer> values) {
            addCriterion("O_ID not in", values, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdBetween(Integer value1, Integer value2) {
            addCriterion("O_ID between", value1, value2, "oId");
            return (Criteria) this;
        }

        public Criteria andOIdNotBetween(Integer value1, Integer value2) {
            addCriterion("O_ID not between", value1, value2, "oId");
            return (Criteria) this;
        }

        public Criteria andAdminNameIsNull() {
            addCriterion("ADMIN_NAME is null");
            return (Criteria) this;
        }

        public Criteria andAdminNameIsNotNull() {
            addCriterion("ADMIN_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andAdminNameEqualTo(String value) {
            addCriterion("ADMIN_NAME =", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotEqualTo(String value) {
            addCriterion("ADMIN_NAME <>", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameGreaterThan(String value) {
            addCriterion("ADMIN_NAME >", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameGreaterThanOrEqualTo(String value) {
            addCriterion("ADMIN_NAME >=", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLessThan(String value) {
            addCriterion("ADMIN_NAME <", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLessThanOrEqualTo(String value) {
            addCriterion("ADMIN_NAME <=", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLike(String value) {
            addCriterion("ADMIN_NAME like", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotLike(String value) {
            addCriterion("ADMIN_NAME not like", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameIn(List<String> values) {
            addCriterion("ADMIN_NAME in", values, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotIn(List<String> values) {
            addCriterion("ADMIN_NAME not in", values, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameBetween(String value1, String value2) {
            addCriterion("ADMIN_NAME between", value1, value2, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotBetween(String value1, String value2) {
            addCriterion("ADMIN_NAME not between", value1, value2, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNull() {
            addCriterion("ADMIN_PASSWORD is null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNotNull() {
            addCriterion("ADMIN_PASSWORD is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordEqualTo(String value) {
            addCriterion("ADMIN_PASSWORD =", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotEqualTo(String value) {
            addCriterion("ADMIN_PASSWORD <>", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThan(String value) {
            addCriterion("ADMIN_PASSWORD >", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("ADMIN_PASSWORD >=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThan(String value) {
            addCriterion("ADMIN_PASSWORD <", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThanOrEqualTo(String value) {
            addCriterion("ADMIN_PASSWORD <=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLike(String value) {
            addCriterion("ADMIN_PASSWORD like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotLike(String value) {
            addCriterion("ADMIN_PASSWORD not like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIn(List<String> values) {
            addCriterion("ADMIN_PASSWORD in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotIn(List<String> values) {
            addCriterion("ADMIN_PASSWORD not in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordBetween(String value1, String value2) {
            addCriterion("ADMIN_PASSWORD between", value1, value2, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotBetween(String value1, String value2) {
            addCriterion("ADMIN_PASSWORD not between", value1, value2, "adminPassword");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ADMIN
     *
     * @mbggenerated do_not_delete_during_merge Thu Nov 01 08:54:57 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ADMIN
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}