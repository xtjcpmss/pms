package cn.com.chinatelecom.pms.action;

import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.com.chinatelecom.pms.common.POIUtil;
import cn.com.chinatelecom.pms.pojo.ExecuteOrg;
import cn.com.chinatelecom.pms.pojo.Members;
import cn.com.chinatelecom.pms.pojo.Module;
import cn.com.chinatelecom.pms.pojo.Process;
import cn.com.chinatelecom.pms.pojo.RequireKind;
import cn.com.chinatelecom.pms.pojo.RequirePriority;
import cn.com.chinatelecom.pms.pojo.RequireType;
import cn.com.chinatelecom.pms.pojo.Requirement;
import cn.com.chinatelecom.pms.service.RequireManageService;

import com.opensymphony.xwork2.ActionContext;

/**
 * 需求管理Action
 * @author songxudong
 *
 */
@SuppressWarnings("serial")
public class RequireManageAction extends BaseAction{
	
	//引入需要的service
	@Autowired
	private RequireManageService requireManageService;
	
	
	
	//下拉框JSON
	private InputStream inputStream;
	private List<RequireKind> kindList;//需求种类
	private List<RequireType> typeList;//需求类型

	//需求列表
	private List<Requirement> requireList;
	
	
	
	
	/**
	 * 获取所有需求种类
	 */
	public String loadAllKind(){
		List<RequireKind> kindList = requireManageService.getAllRequireKind();
		inputStream = this.toJsonInputStream(kindList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取所有需求类型
	 */
	public String loadAllType(){
		List<RequireType> typeList = requireManageService.getAllRequireType();
		inputStream = this.toJsonInputStream(typeList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取所有模块
	 */
	public String loadAllModule(){
		List<Module> moduleList = requireManageService.getAllModule();
		inputStream = this.toJsonInputStream(moduleList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取所有流程
	 */
	public String loadAllProcess(){
		List<Process> processList = requireManageService.getAllProcess();
		inputStream = this.toJsonInputStream(processList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取所有人员
	 */
	public String loadAllMember(){
		List<Members> memberList = requireManageService.getAllMember();
		inputStream = this.toJsonInputStream(memberList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取优先级
	 */
	public String loadAllPriority(){
		List<RequirePriority> priorityList = requireManageService.getAllPriority();
		inputStream = this.toJsonInputStream(priorityList);
		return "jsonInputStream";
	}
	
	/**
	 * 获取执行机构
	 */
	public String loadAllExecuteOrg(){
		List<ExecuteOrg> executeOrgList = requireManageService.getAllExecuteOrg();
		inputStream = this.toJsonInputStream(executeOrgList);
		return "jsonInputStream";
	}
	
	
	
	
	
	/**
	 * 加载到需求管理页面
	 */
	public String requireUI(){
		requireList = requireManageService.selectAllRequirment();
		requireList = requireManageService.getRequirementList(requireList);
		//将封装好的list传到页面
		ActionContext.getContext().put("requireList",requireList);
		return "requireUI";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * POI打印数据
	 */
	public String printData(){
		requireList = requireManageService.selectAllRequirment();
		//打印输出列表数据
		POIUtil.printRequireListForExcel(requireList);
		
		return "success";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public InputStream getInputStream(){
		return inputStream;
	}

	public void setInputStream(InputStream inputStream){
		this.inputStream = inputStream;
	}

	public List<RequireKind> getKindList(){
		return kindList;
	}

	public void setKindList(List<RequireKind> kindList){
		this.kindList = kindList;
	}

	public List<RequireType> getTypeList(){
		return typeList;
	}

	public void setTypeList(List<RequireType> typeList){
		this.typeList = typeList;
	}

	public List<Requirement> getRequireList(){
		return requireList;
	}

	public void setRequireList(List<Requirement> requireList){
		this.requireList = requireList;
	}

	
	
	
	
	
	
}















