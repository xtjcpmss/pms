/*
 * CheckLoginInterceptor
 * V 1.0.0
 * 2012/8/29
 *
 * Copyright © 2012 中国电信股份有限公司增值业务运营中心 版权所有
 *
 * 所有文字、代码资料，版权均属中国电信股份有限公司增值业务运营中心
 * 所有，任何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */

package cn.com.chinatelecom.pms.interceptor;

import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.com.chinatelecom.pms.common.ApplicationConstants;
import cn.com.chinatelecom.pms.common.security.TimeUtil;
import cn.com.chinatelecom.pms.pojo.Admin;
import cn.com.chinatelecom.pms.service.OperationLogsService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 打印执行日志和执行时间
 * @author 刘通
 * 
 */
public class TimeLogInterceptor extends AbstractInterceptor {
	
	@Autowired
	private OperationLogsService operationLogsService;

	/*
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com.opensymphony.xwork2.ActionInvocation)
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// 登陆用户
		Admin currentUser = (Admin) SecurityUtils.getSubject().getPrincipal();

		Date startTime = new Date();
		// 执行action
		String result = invocation.invoke();
		
		Map<String, Object> params = ActionContext.getContext().getParameters();
		StringBuffer paramsStr = new StringBuffer();
		
		try {
			for (String key : params.keySet()) {
				paramsStr.append(key).append("=").append(ArrayUtils.toString(params.get(key))).append(";");
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		
		// 操作日志
		if (ApplicationConstants.operationLogs) {
			operationLogsService.insert(startTime, String.valueOf(ServletActionContext.getRequest().getLocalPort()), Thread.currentThread().getName(), currentUser.getUsername() + "-" + currentUser.getUsertype(), ServletActionContext.getRequest().getRequestURI(), paramsStr.toString(), TimeUtil.formatMillisecond(System.currentTimeMillis() - startTime.getTime()));
		}
		logger.info("用户:[{}-{}],访问:[{}],参数:[{}],用时:[{}]{}", currentUser != null ? currentUser.getUsername() : "", currentUser != null ? currentUser.getUsertype() : "", ServletActionContext.getRequest().getRequestURI(), paramsStr, TimeUtil.formatMillisecond(System.currentTimeMillis() - startTime.getTime()), ApplicationConstants.LINE_SEPARATOR);
		
		return result;
	}

	final Logger logger = LoggerFactory.getLogger(TimeLogInterceptor.class);
	private static final long serialVersionUID = -3178964683345137528L;
}
