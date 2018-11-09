package com.yang.dao;

import com.yang.domain.VidGenerator;
import com.yang.domain.VidGeneratorExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VidGeneratorMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int countByExample(VidGeneratorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int deleteByExample(VidGeneratorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int deleteByPrimaryKey(Integer oId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int insert(VidGenerator record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int insertSelective(VidGenerator record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    List<VidGenerator> selectByExample(VidGeneratorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    VidGenerator selectByPrimaryKey(Integer oId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int updateByExampleSelective(@Param("record") VidGenerator record, @Param("example") VidGeneratorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int updateByExample(@Param("record") VidGenerator record, @Param("example") VidGeneratorExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int updateByPrimaryKeySelective(VidGenerator record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table VID_GENERATOR
     *
     * @mbggenerated Thu Nov 08 21:27:07 CST 2018
     */
    int updateByPrimaryKey(VidGenerator record);
}