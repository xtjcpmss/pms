/*
 * ApplicationConstants
 * V 1.0.0
 * 2012/11/14
 *
 * Copyright © 2012 中国电信股份有限公司增值业务运营中心 版权所有
 *
 * 所有文字、代码资料，版权均属中国电信股份有限公司增值业务运营中心
 * 所有，任何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。
 */
package cn.com.chinatelecom.pms.common;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


/**
 * 系统常量
 * <br>
 *
 * @author 刘通
 *
 */
@Component
public final class ApplicationConstants {
	
	/** 该类不能初始化*/
	private ApplicationConstants() {
	}
	
	/** 系统中文名称 */
	public static String appContextNameCN;
	/** 系统英文名称 */
	public static String appContextNameEN;
	
	/* -----------------------------------
	 *       常用变量
	 ----------------------------------- */
	/** 系统临时目录 */
	public static String systemTmp = System.getProperty("java.io.tmpdir");
	/** 系统换行符 */
	public static final String LINE_SEPARATOR = System.getProperty("line.separator");
	/** 目录风格符*/
	public static final String FILE_SEPARATOR = File.separator;
	
	/** 时间格式化字符串 */
	public static final String[] TIME_PATTERN = new String[] { "yyyy-MM", "yyyyMM", "yyyy/MM", "yyyyMMdd", "yyyy-MM-dd", "yyyy/MM/dd", "yyyyMMddHHmmss", "yyyy-MM-dd HH:mm:ss", "yyyy/MM/dd HH:mm:ss" };
	
	/* -----------------------------------
	 *        系统配置
	 ----------------------------------- */
	/** 本系统设备号 */
	public static String srcSsDeviceNo;
	/** key */
	public static String key;
	/** 登录跳转地址 */
	public static String loginReturnURL;
	/** 退出跳转地址 */
	public static String logoutReturnURL;
 
	/** 本系统登录跳转URL */
	public static String loginURL;
	/** 本系统登退出地址 */
	public static String logoutURL;

	/** 页面分页每页条数 */
	public static int pageSize;


	/* -----------------------------------
	 *        执行 sql load 配置
	 ----------------------------------- */
	public static String sqlldrHost;
	public static int sqlldrPort;
	public static String sqlldrUserName;
	public static String sqlldrPassword;
	public static String sqlldrCmd;
	
	
	/* -----------------------------------
	 *        前台图片服务器配置
	 ----------------------------------- */
	public static String imgSerHost;
	public static int imgSerPort;
	public static String imgSerUserName;
	public static String imgSerPassword;
	public static String imgSerPath;
	public static String imgSerUrl;
	
	/* -----------------------------------
	 *        日志配置
	 ----------------------------------- */
	public static boolean operationLogs;
	
	/* -----------------------------------
	 *        set
	 ----------------------------------- */

	@Value("#{config['app.context.name.en']}") public void setSystemTmp(String appContextNameEN) {
		ApplicationConstants.systemTmp = System.getProperty("java.io.tmpdir") + appContextNameEN + FILE_SEPARATOR;
	}
	@Value("#{config['sso.srcSsDeviceNo']}") public void setSrcSsDeviceNo(String srcSsDeviceNo) {
		ApplicationConstants.srcSsDeviceNo = srcSsDeviceNo;
	}
	@Value("#{config['sso.key']}") public void setKey(String key) {
		ApplicationConstants.key = key;
	}
	@Value("#{config['sso.login.return.url']}") public void setLoginReturnURL(String loginReturnURL) {
		ApplicationConstants.loginReturnURL = loginReturnURL;
	}
	@Value("#{config['sso.logout.return.url']}") public void setLogoutReturnURL(String logoutReturnURL) {
		ApplicationConstants.logoutReturnURL = logoutReturnURL;
	}
	@Value("#{config['sso.login.url']}") public void setLoginURL(String loginURL) {
		ApplicationConstants.loginURL = loginURL;
	}
	@Value("#{config['sso.logout.url']}") public void setLogoutURL(String logoutURL) {
		ApplicationConstants.logoutURL = logoutURL;
	}
	@Value("#{config['app.context.name.cn']}") public void setAppContextNameCN(String appContextNameCN) {
		ApplicationConstants.appContextNameCN = appContextNameCN;
	}
	@Value("#{config['app.context.name.en']}") public void setAppContextNameEN(String appContextNameEN) {
		ApplicationConstants.appContextNameEN = appContextNameEN;
	}
	@Value("#{config['page.pageSize']}") public void setPageSize(int pageSize) {
		ApplicationConstants.pageSize = pageSize;
	}
	@Value("#{config['sqlldr.host']}") public void setSqlldrHost(String sqlldrHost) {
		ApplicationConstants.sqlldrHost = sqlldrHost;
	}
	@Value("#{config['sqlldr.port']}") public void setSqlldrPort(int sqlldrPort) {
		ApplicationConstants.sqlldrPort = sqlldrPort;
	}
	@Value("#{config['sqlldr.userName']}") public void setSqlldrUserName(String sqlldrUserName) {
		ApplicationConstants.sqlldrUserName = sqlldrUserName;
	}
	@Value("#{config['sqlldr.password']}") public void setSqlldrPassword(String sqlldrPassword) {
		ApplicationConstants.sqlldrPassword = sqlldrPassword;
	}
	@Value("#{config['sqlldr.cmd']}") public void setSqlldrCmd(String sqlldrCmd) {
		ApplicationConstants.sqlldrCmd = sqlldrCmd;
	}
	
	@Value("#{config['imgSer.host']}") public void setImgSerHost(String imgSerHost) {
		ApplicationConstants.imgSerHost = imgSerHost;
	}
	@Value("#{config['imgSer.port']}") public void setImgSerPort(int imgSerPort) {
		ApplicationConstants.imgSerPort = imgSerPort;
	}
	@Value("#{config['imgSer.userName']}") public void setImgSerUserName(String imgSerUserName) {
		ApplicationConstants.imgSerUserName = imgSerUserName;
	}
	@Value("#{config['imgSer.password']}") public void setImgSerPassword(String imgSerPassword) {
		ApplicationConstants.imgSerPassword = imgSerPassword;
	}
	@Value("#{config['imgSer.path']}") public void setImgSerPath(String imgSerPath) {
		ApplicationConstants.imgSerPath = imgSerPath;
	}
	@Value("#{config['imgSer.url']}") public void setImgSerUrl(String imgSerUrl) {
		ApplicationConstants.imgSerUrl = imgSerUrl;
	}
	
	
}