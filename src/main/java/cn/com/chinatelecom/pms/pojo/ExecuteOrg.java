package cn.com.chinatelecom.pms.pojo;

import java.math.BigDecimal;

public class ExecuteOrg {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column EXECUTE_ORG.EXECUTE_ORG_ID
	 * @mbggenerated
	 */
	private String	executeOrgId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column EXECUTE_ORG.EXECUTE_ORG_CODE
	 * @mbggenerated
	 */
	private BigDecimal	executeOrgCode;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column EXECUTE_ORG.EXECUTE_ORG_NAME
	 * @mbggenerated
	 */
	private String	executeOrgName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column EXECUTE_ORG.EXECUTE_ORG_DESC
	 * @mbggenerated
	 */
	private String	executeOrgDesc;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column EXECUTE_ORG.EXECUTE_ORG_ID
	 * @return  the value of EXECUTE_ORG.EXECUTE_ORG_ID
	 * @mbggenerated
	 */
	public String getExecuteOrgId(){
		return executeOrgId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column EXECUTE_ORG.EXECUTE_ORG_ID
	 * @param executeOrgId  the value for EXECUTE_ORG.EXECUTE_ORG_ID
	 * @mbggenerated
	 */
	public void setExecuteOrgId(String executeOrgId){
		this.executeOrgId = executeOrgId==null ? null : executeOrgId.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column EXECUTE_ORG.EXECUTE_ORG_CODE
	 * @return  the value of EXECUTE_ORG.EXECUTE_ORG_CODE
	 * @mbggenerated
	 */
	public BigDecimal getExecuteOrgCode(){
		return executeOrgCode;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column EXECUTE_ORG.EXECUTE_ORG_CODE
	 * @param executeOrgCode  the value for EXECUTE_ORG.EXECUTE_ORG_CODE
	 * @mbggenerated
	 */
	public void setExecuteOrgCode(BigDecimal executeOrgCode){
		this.executeOrgCode = executeOrgCode;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column EXECUTE_ORG.EXECUTE_ORG_NAME
	 * @return  the value of EXECUTE_ORG.EXECUTE_ORG_NAME
	 * @mbggenerated
	 */
	public String getExecuteOrgName(){
		return executeOrgName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column EXECUTE_ORG.EXECUTE_ORG_NAME
	 * @param executeOrgName  the value for EXECUTE_ORG.EXECUTE_ORG_NAME
	 * @mbggenerated
	 */
	public void setExecuteOrgName(String executeOrgName){
		this.executeOrgName = executeOrgName==null ? null : executeOrgName
				.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column EXECUTE_ORG.EXECUTE_ORG_DESC
	 * @return  the value of EXECUTE_ORG.EXECUTE_ORG_DESC
	 * @mbggenerated
	 */
	public String getExecuteOrgDesc(){
		return executeOrgDesc;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column EXECUTE_ORG.EXECUTE_ORG_DESC
	 * @param executeOrgDesc  the value for EXECUTE_ORG.EXECUTE_ORG_DESC
	 * @mbggenerated
	 */
	public void setExecuteOrgDesc(String executeOrgDesc){
		this.executeOrgDesc = executeOrgDesc==null ? null : executeOrgDesc
				.trim();
	}
}