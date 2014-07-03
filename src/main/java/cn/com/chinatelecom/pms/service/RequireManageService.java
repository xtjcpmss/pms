package cn.com.chinatelecom.pms.service;

import java.util.List;

import cn.com.chinatelecom.pms.pojo.ExecuteOrg;
import cn.com.chinatelecom.pms.pojo.Members;
import cn.com.chinatelecom.pms.pojo.Module;
import cn.com.chinatelecom.pms.pojo.Process;
import cn.com.chinatelecom.pms.pojo.RequireKind;
import cn.com.chinatelecom.pms.pojo.RequirePriority;
import cn.com.chinatelecom.pms.pojo.RequireType;
import cn.com.chinatelecom.pms.pojo.Requirement;

public interface RequireManageService {
	
	/**
	 * 获取所有需求种类
	 */
	List<RequireKind> getAllRequireKind();
	
	/**
	 * 获取所有需求类型 
	 */
	List<RequireType> getAllRequireType();
	
	/**
	 * 获取所有模块
	 */
	List<Module> getAllModule();
	
	/**
	 * 获取所有流程
	 */
	List<Process> getAllProcess();
	
	/**
	 * 获取所有人员
	 */
	List<Members> getAllMember();
	
	/**
	 * 获取所有优先级
	 */
	List<RequirePriority> getAllPriority();
	
	/**
	 * 获取所有执行机构
	 */
	List<ExecuteOrg> getAllExecuteOrg();
	
	/**
	 * 加工需求列表
	 */
	List<Requirement> getRequirementList(List<Requirement> requireList);
	
	
	/**
	 * 得到列表信息
	 */
	List<Requirement> selectAllRequirment();
	
	
	
}	
