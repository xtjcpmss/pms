package cn.com.chinatelecom.pms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.activiti.engine.impl.util.json.JSONObject;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.chinatelecom.pms.dao.EffectActionMapper;
import cn.com.chinatelecom.pms.dao.EffectProcessMapper;
import cn.com.chinatelecom.pms.dao.ExecuteOrgMapper;
import cn.com.chinatelecom.pms.dao.MembersMapper;
import cn.com.chinatelecom.pms.dao.ModuleMapper;
import cn.com.chinatelecom.pms.dao.ProcessMapper;
import cn.com.chinatelecom.pms.dao.RequireEffectMapper;
import cn.com.chinatelecom.pms.dao.RequireKindMapper;
import cn.com.chinatelecom.pms.dao.RequirePriorityMapper;
import cn.com.chinatelecom.pms.dao.RequireTypeMapper;
import cn.com.chinatelecom.pms.dao.RequirementMapper;
import cn.com.chinatelecom.pms.pojo.ExecuteOrg;
import cn.com.chinatelecom.pms.pojo.Members;
import cn.com.chinatelecom.pms.pojo.Module;
import cn.com.chinatelecom.pms.pojo.Process;
import cn.com.chinatelecom.pms.pojo.RequireKind;
import cn.com.chinatelecom.pms.pojo.RequirePriority;
import cn.com.chinatelecom.pms.pojo.RequireType;
import cn.com.chinatelecom.pms.pojo.Requirement;
import cn.com.chinatelecom.pms.service.RequireManageService;

@Service
public class RequireManageServiceImpl implements RequireManageService{
	@Autowired
	private RequireKindMapper kindMapper;
	@Autowired
	private RequireTypeMapper typeMapper;
	@Autowired
	private ModuleMapper moduleMapper;
	@Autowired
	private ProcessMapper processMapper;
	@Autowired
	private MembersMapper memberMapper;
	@Autowired
	private RequirePriorityMapper priorityMapper;
	@Autowired
	private ExecuteOrgMapper executeOrgMapper;
	@Autowired
	private EffectProcessMapper effectProcessMapper;
	@Autowired 
	private EffectActionMapper effectActionMapper;
	@Autowired
	private RequireEffectMapper requireEffectMapper;
	@Autowired
	private RequirementMapper requirementMapper;
	
	
	@Override
	public List<RequireKind> getAllRequireKind(){
		return kindMapper.selectAllRequireKind();
	}

	@Override
	public List<RequireType> getAllRequireType(){
		return typeMapper.selectAllRequireType();
	}
	
	@Override
	public List<Module> getAllModule(){
		return moduleMapper.selectAllModule();
	}
	
	@Override
	public List<Process> getAllProcess(){
		return processMapper.selectAllProcess();
	}
	
	@Override
	public List<Members> getAllMember(){
		return memberMapper.selectAllMember();
	}
	
	@Override
	public List<RequirePriority> getAllPriority(){
		return priorityMapper.selectAllPriority();
	}
	
	@Override
	public List<ExecuteOrg> getAllExecuteOrg(){
		return executeOrgMapper.selectAllExecuteOrg();
	}
	
	
	@Override
	public List<Requirement> selectAllRequirment(){
		return requirementMapper.selectAllRequirement();
	}

	@Override
	public List<Requirement> getRequirementList(List<Requirement> requireList){
		Requirement requirement = new Requirement();
		
		for(int i=0;i<requireList.size();i++){
			requirement = requireList.get(i);
			//得到各个id值
			String kindId = requirement.getRequireKindId();
			String typeId = requirement.getRequireTypeId();
			String moduleId = requirement.getModuleId();
			String processId = requirement.getEffectProcessId();
			String actionId = requirement.getEffectActionId();
			String executeOrgId = requirement.getExecuteOrgId();
			String requireEffectId = requirement.getRequireEffectId();
			
			//根据id获取name
			String kindName = kindMapper.getNameById(kindId);
			String typeName = typeMapper.getNameById(typeId);
			String moduleName = moduleMapper.getNameById(moduleId);
			String processName = effectProcessMapper.getNameById(processId);
			String actionName = effectActionMapper.getNameById(actionId);
			String executeOrgName = executeOrgMapper.getNameById(executeOrgId);
			String requireEffectName = requireEffectMapper.getNameById(requireEffectId);
			
			//将name重新赋值给原id位置
			requirement.setRequireKindId(kindName);
			requirement.setRequireTypeId(typeName);
			requirement.setModuleId(moduleName);
			requirement.setEffectProcessId(processName);
			requirement.setEffectActionId(actionName);
			requirement.setExecuteOrgId(executeOrgName);
			requirement.setRequireEffectId(requireEffectName);
			
			//将对象放到list中
			requireList.set(i,requirement);			
		}
		return requireList;
	}
	
	
	
	
	@Test
	public void ttt(){
		
		List<String> list = new ArrayList<String>();
		list.add("111");
		list.add("111");
		list.add("111");
		list.add("111");
		JSONObject obj = new JSONObject();
		obj.accumulate("row",list);
		String o = obj.toString();
		System.out.println(o);
		
	}

}
