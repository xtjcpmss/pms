package cn.com.chinatelecom.pms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.chinatelecom.pms.dao.ProjecGtroupMapper;
import cn.com.chinatelecom.pms.managelog.MethodLog;
import cn.com.chinatelecom.pms.pojo.ProjecGtroup;
import cn.com.chinatelecom.pms.service.ProjecGtroupService;
@Service
public class ProjecGtroupServiceImpl implements ProjecGtroupService {
	@Autowired
	private  ProjecGtroupMapper projecGtroupMapper;
	@MethodLog(methodDescription="查询组")
	@Override//查询项目组名称登陆页面展示
	public List<ProjecGtroup> selectProjecGtroup() {
		return projecGtroupMapper.selectProjecGtroup();
	}
	
	
	

}
