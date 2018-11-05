package com.yang.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PocketRecordExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public PocketRecordExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
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
     * This method corresponds to the database table POCKET_RECORD
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
     * This method corresponds to the database table POCKET_RECORD
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table POCKET_RECORD
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
     * This class corresponds to the database table POCKET_RECORD
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

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("TIME is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("TIME is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("TIME =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("TIME <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("TIME >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("TIME >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("TIME <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("TIME <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("TIME in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("TIME not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("TIME between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("TIME not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("TYPE is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("TYPE =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("TYPE <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("TYPE >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("TYPE >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("TYPE <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("TYPE <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("TYPE like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("TYPE not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("TYPE in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("TYPE not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("TYPE between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("TYPE not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andAmountIsNull() {
            addCriterion("AMOUNT is null");
            return (Criteria) this;
        }

        public Criteria andAmountIsNotNull() {
            addCriterion("AMOUNT is not null");
            return (Criteria) this;
        }

        public Criteria andAmountEqualTo(BigDecimal value) {
            addCriterion("AMOUNT =", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotEqualTo(BigDecimal value) {
            addCriterion("AMOUNT <>", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountGreaterThan(BigDecimal value) {
            addCriterion("AMOUNT >", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("AMOUNT >=", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountLessThan(BigDecimal value) {
            addCriterion("AMOUNT <", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountLessThanOrEqualTo(BigDecimal value) {
            addCriterion("AMOUNT <=", value, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountIn(List<BigDecimal> values) {
            addCriterion("AMOUNT in", values, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotIn(List<BigDecimal> values) {
            addCriterion("AMOUNT not in", values, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("AMOUNT between", value1, value2, "amount");
            return (Criteria) this;
        }

        public Criteria andAmountNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("AMOUNT not between", value1, value2, "amount");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidIsNull() {
            addCriterion("RELATED_VIPID is null");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidIsNotNull() {
            addCriterion("RELATED_VIPID is not null");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidEqualTo(String value) {
            addCriterion("RELATED_VIPID =", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidNotEqualTo(String value) {
            addCriterion("RELATED_VIPID <>", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidGreaterThan(String value) {
            addCriterion("RELATED_VIPID >", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidGreaterThanOrEqualTo(String value) {
            addCriterion("RELATED_VIPID >=", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidLessThan(String value) {
            addCriterion("RELATED_VIPID <", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidLessThanOrEqualTo(String value) {
            addCriterion("RELATED_VIPID <=", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidLike(String value) {
            addCriterion("RELATED_VIPID like", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidNotLike(String value) {
            addCriterion("RELATED_VIPID not like", value, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidIn(List<String> values) {
            addCriterion("RELATED_VIPID in", values, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidNotIn(List<String> values) {
            addCriterion("RELATED_VIPID not in", values, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidBetween(String value1, String value2) {
            addCriterion("RELATED_VIPID between", value1, value2, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andRelatedVipidNotBetween(String value1, String value2) {
            addCriterion("RELATED_VIPID not between", value1, value2, "relatedVipid");
            return (Criteria) this;
        }

        public Criteria andPointOrCashIsNull() {
            addCriterion("POINT_OR_CASH is null");
            return (Criteria) this;
        }

        public Criteria andPointOrCashIsNotNull() {
            addCriterion("POINT_OR_CASH is not null");
            return (Criteria) this;
        }

        public Criteria andPointOrCashEqualTo(String value) {
            addCriterion("POINT_OR_CASH =", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashNotEqualTo(String value) {
            addCriterion("POINT_OR_CASH <>", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashGreaterThan(String value) {
            addCriterion("POINT_OR_CASH >", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashGreaterThanOrEqualTo(String value) {
            addCriterion("POINT_OR_CASH >=", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashLessThan(String value) {
            addCriterion("POINT_OR_CASH <", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashLessThanOrEqualTo(String value) {
            addCriterion("POINT_OR_CASH <=", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashLike(String value) {
            addCriterion("POINT_OR_CASH like", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashNotLike(String value) {
            addCriterion("POINT_OR_CASH not like", value, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashIn(List<String> values) {
            addCriterion("POINT_OR_CASH in", values, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashNotIn(List<String> values) {
            addCriterion("POINT_OR_CASH not in", values, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashBetween(String value1, String value2) {
            addCriterion("POINT_OR_CASH between", value1, value2, "pointOrCash");
            return (Criteria) this;
        }

        public Criteria andPointOrCashNotBetween(String value1, String value2) {
            addCriterion("POINT_OR_CASH not between", value1, value2, "pointOrCash");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table POCKET_RECORD
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
     * This class corresponds to the database table POCKET_RECORD
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