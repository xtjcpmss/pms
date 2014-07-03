package cn.com.chinatelecom.pms.dao;

import cn.com.chinatelecom.pms.pojo.MemberGroup;
import cn.com.chinatelecom.pms.pojo.MemberGroupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MemberGroupMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int countByExample(MemberGroupExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int deleteByExample(MemberGroupExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(String memberGroupId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int insert(MemberGroup record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int insertSelective(MemberGroup record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	List<MemberGroup> selectByExample(MemberGroupExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	MemberGroup selectByPrimaryKey(String memberGroupId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int updateByExampleSelective(@Param("record")
	MemberGroup record,@Param("example")
	MemberGroupExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int updateByExample(@Param("record")
	MemberGroup record,@Param("example")
	MemberGroupExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(MemberGroup record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table MEMBER_GROUP
	 * @mbggenerated
	 */
	int updateByPrimaryKey(MemberGroup record);
}