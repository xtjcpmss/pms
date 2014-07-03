package cn.com.chinatelecom.pms.dao;

import cn.com.chinatelecom.pms.pojo.ProjecGtroup;
import cn.com.chinatelecom.pms.pojo.ProjecGtroupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProjecGtroupMapper {
	

	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @return
     */
    List<ProjecGtroup> selectProjecGtroup();
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int countByExample(ProjecGtroupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int deleteByExample(ProjecGtroupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int insert(ProjecGtroup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int insertSelective(ProjecGtroup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    List<ProjecGtroup> selectByExample(ProjecGtroupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    ProjecGtroup selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ProjecGtroup record, @Param("example") ProjecGtroupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ProjecGtroup record, @Param("example") ProjecGtroupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProjecGtroup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table T_PROJECT_GROUP
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProjecGtroup record);
}