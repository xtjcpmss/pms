package cn.com.chinatelecom.pms.action;

/**
 * 需求管理Action
 * @author ganyongcong
 *
 */
@SuppressWarnings("serial")
public class TaskManagementAction extends BaseAction {

	/**
	 * 加载到任务管理页面
	 * @return
	 */
	public String taskPage(){
		return "taskPage";
	}
	/**
	 * 加载到工作计划报表页面
	 * @return
	 */
	public String workPlanStatement(){
		return "workPlanStatement";
	}
	/**
	 * 加载到任务查询及管理页面
	 * @return
	 */
	public String taskQuery(){
		return "taskQuery";
	}
}
