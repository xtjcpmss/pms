/**
 * 
 */
package cn.com.chinatelecom.pms.service;

import java.util.Date;


/**
 * 系统操作日志
 * @author liutong01
 *
 */
public interface OperationLogsService {
	/**
	 * 插入操作日志
	 * @param time			操作时间
	 * @param levelInfo		日志等级，此处为访问端口号
	 * @param thread		线程名称
	 * @param userInfo		登录用户
	 * @param url			访问URL
	 * @param parameter		访问参数
	 * @param withTime		执行时间
	 */
	void insert(Date time, String port, String thread, String userInfo, String url, String parameter, String withTime);
}
