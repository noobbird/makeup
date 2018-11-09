package com.yang.dao;

import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VipMapper {

    int updateVipByVid(Vip vip);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int countByExample(VipExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int deleteByExample(VipExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int deleteByPrimaryKey(Integer oId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int insert(Vip record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int insertSelective(Vip record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    List<Vip> selectByExample(VipExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    Vip selectByPrimaryKey(Integer oId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByExampleSelective(@Param("record") Vip record, @Param("example") VipExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByExample(@Param("record") Vip record, @Param("example") VipExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByPrimaryKeySelective(Vip record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VIP
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByPrimaryKey(Vip record);
}