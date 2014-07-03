/*
 * MainAction
 * V 1.0.0
 * 2014/5/12
 *
 * Copyright © 2012 中国电信股份有限公司系统集成运营中心 版权所有
 *
 * 所有文字、代码资料，版权均属中国电信股份有限公司增值业务运营中心
 * 所有，任何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */

package cn.com.chinatelecom.pms.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.com.chinatelecom.pms.managelog.MethodLog;
import cn.com.chinatelecom.pms.pojo.Admin;
import cn.com.chinatelecom.pms.pojo.ProjecGtroup;
import cn.com.chinatelecom.pms.service.ProjecGtroupService;

/**
 * 
 * @author XieJingXin
 * 
 */
public class MainAction extends BaseAction {

	/** 登陆信息 */
	private Admin user;
	/** 项目组信息 */
	private List<ProjecGtroup> projecGtroupList;

	/** 项目组信息 */
	private ProjecGtroup projecGtroup;

	// 项目组查询
	@Autowired
	private ProjecGtroupService projecGtroupService;

	/**
	 * 登陆
	 */
	@MethodLog(methodDescription = "进入登录页面")
	public String login() {
		// 查询项目组名称登陆页面展示
		projecGtroupList = projecGtroupService.selectProjecGtroup();
		// 需要加载 项目组名称 在登录页面进行展示
		// 需要进行跳转登录页面
		return "login";

	}

	public String loginPage() {

		return "success";
	}

	/**
	 * 系统主页
	 * 
	 * @return
	 */
	public String home() {

		return "home";
	}

	/**
	 * 退出
	 * 
	 * @return
	 */
	public String logout() {
		Admin _user = getUser();
		if (_user != null)
			logger.info("退出登录\t\t用户名:" + _user.getUsername() + "\tIP:"
					+ ServletActionContext.getRequest().getRemoteAddr()
					+ "\tUser-Agent:"
					+ ServletActionContext.getRequest().getHeader("User-Agent"));
		return "logout";
	}

	public Admin getUser() {
		return user;
	}

	public void setUser(Admin user) {
		this.user = user;
	}

	public ProjecGtroup getProjecGtroup() {
		return projecGtroup;
	}

	public void setProjecGtroup(ProjecGtroup projecGtroup) {
		this.projecGtroup = projecGtroup;
	}

	public List<ProjecGtroup> getProjecGtroupList() {
		return projecGtroupList;
	}

	public void setProjecGtroupList(List<ProjecGtroup> projecGtroupList) {
		this.projecGtroupList = projecGtroupList;
	}

	final Logger logger = LoggerFactory.getLogger(MainAction.class);
	private static final long serialVersionUID = -5124612879856985027L;

}
