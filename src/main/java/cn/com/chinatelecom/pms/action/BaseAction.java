/*
 * BaseAction
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

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import cn.com.chinatelecom.pms.pojo.Admin;
//import cn.com.chinatelecom.pms.vo.PageInfo;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Action 顶级类
 * 
 * @author liutong
 *
 */
public abstract class BaseAction extends ActionSupport {
	
	/**
	 * 分页对象
	 */
//	@Autowired
//	private PageInfo pageInfo;
	
	/** 文件上传路劲 */
	public static final String UPLOAD_PATH = "upload/";
	
	/**
	 * 返回当前登录用户
	 * 
	 * @return
	 */
	public Admin getCurrentUser() {
		Subject currentUser = SecurityUtils.getSubject();
		return (Admin) currentUser.getPrincipal();
	}
	
	/**
	 * 返回应用跟路径：http://localhost:8080/pms
	 * @return
	 */
	public String getBasePath() {
		return ServletActionContext.getRequest().getScheme() + "://" + ServletActionContext.getRequest().getServerName() + ":" + ServletActionContext.getRequest().getServerPort() + ServletActionContext.getRequest().getContextPath();
	}
	
	/**
	 * Json格式化异常
	 * @param object
	 * @return
	 */
	protected InputStream toJsonInputStream(Object object) {
		try {
			ObjectMapper mapper = new ObjectMapper();
			// 不输出空值
			mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
	        mapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm"));
	        String json = mapper.writeValueAsString(object);
		
			return IOUtils.toInputStream(json, "UTF-8");
		} catch (IOException e) {
			logger.error("Json格式化异常", e);
		}
		return null;
	}
	
	/**
	 * 添加Cookie
	 * @param name
	 * @param value
	 */
	protected void addCookie(String name, String value, Integer maxAge) {
		Cookie cookie = new Cookie(name, value);
		if (maxAge != null) {
			cookie.setMaxAge(maxAge);
		} else {
			cookie.setMaxAge(60 * 60 * 24 * 30);
		}
		ServletActionContext.getResponse().addCookie(cookie);
	}

	/**
	 * 获取Cookie
	 * @param name
	 * @return
	 */
	protected String getCookie(String name) {
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(name)) {
				return cookie.getValue();
			}
		}
		return null;
	}
	
//	public PageInfo getPageInfo() {
//		return pageInfo;
//	}
//	public void setPageInfo(PageInfo pageInfo) {
//		this.pageInfo = pageInfo;
//	}
	
	final Logger logger = LoggerFactory.getLogger(BaseAction.class);
	private static final long serialVersionUID = 2542776433723007314L;
}
