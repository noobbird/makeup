package com.yang.dao;

import com.yang.domain.Product;
import com.yang.domain.ProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int countByExample(ProductExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int deleteByExample(ProductExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int deleteByPrimaryKey(Integer productId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int insert(Product record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int insertSelective(Product record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    List<Product> selectByExample(ProductExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    Product selectByPrimaryKey(Integer productId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByPrimaryKeySelective(Product record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PRODUCT
     *
     * @mbggenerated Thu Nov 01 08:54:57 CST 2018
     */
    int updateByPrimaryKey(Product record);
}