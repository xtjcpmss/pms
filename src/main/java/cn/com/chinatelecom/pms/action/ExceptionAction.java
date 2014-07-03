/*
 * ExceptionAction
 * V 1.0.0
 * 2012/8/29
 *
 * Copyright © 2012 中国电信股份有限公司增值业务运营中心 版权所有
 *
 * 所有文字、代码资料，版权均属中国电信股份有限公司增值业务运营中心
 * 所有，任何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */

package cn.com.chinatelecom.pms.action;

import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.com.chinatelecom.pms.common.ApplicationConstants;

import com.opensymphony.xwork2.ActionContext;


/**
 * 处理Action异常
 * 
 * @author LiuTong
 * 
 */
public class ExceptionAction extends BaseAction {
	private Exception exception;

	/*
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() {
		try {
			logger.error("{}********** 系统异常 **********{}", ApplicationConstants.LINE_SEPARATOR, getErrorMessage(), exception);
		} catch (Exception e) {
			logger.error("输出错误日志异常！", e);
		}
		return ERROR;
	}
	
	private String getErrorMessage() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> params = context.getParameters();
		StringBuffer paramsStr = new StringBuffer();
		
		try {
			for (String key : params.keySet()) {
				paramsStr.append(key).append("=").append(ArrayUtils.toString(params.get(key))).append(";");
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		
		StringBuffer message = new StringBuffer();
		message.append(ApplicationConstants.LINE_SEPARATOR);
		if (getCurrentUser() != null)
			message.append("登录用户：").append(getCurrentUser().getUsername()).append("-").append(getCurrentUser().getUsertype()).append(ApplicationConstants.LINE_SEPARATOR);
		message.append("异常时间：").append(DateFormatUtils.format(new Date(), "yyyy年MM月dd日 HH时mm分ss秒")).append(ApplicationConstants.LINE_SEPARATOR);
		message.append("客户端IP：").append(ServletActionContext.getRequest().getRemoteAddr()).append(ApplicationConstants.LINE_SEPARATOR);
		// 生产环境负载将用户真实IP添加至Header("x-forwarded-for")
		if (ServletActionContext.getRequest().getHeader("x-forwarded-for") != null)
			message.append("x-forwarded-for:").append(ServletActionContext.getRequest().getHeader("x-forwarded-for")).append(ApplicationConstants.LINE_SEPARATOR);
		message.append("客户端User-Agent：").append(ServletActionContext.getRequest().getHeader("User-Agent")).append(ApplicationConstants.LINE_SEPARATOR);
		message.append("请求URL：").append(ServletActionContext.getRequest().getRequestURI()).append(ApplicationConstants.LINE_SEPARATOR);
		message.append("请求参数：").append(paramsStr);
		
		return message.toString();
	}

	public Exception getException() {
		return exception;
	}
	public void setException(Exception exception) {
		this.exception = exception;
	}
	
	final Logger logger = LoggerFactory.getLogger(ExceptionAction.class);
	private static final long serialVersionUID = 1461747420299280284L;
}
