/**
 * 
 */
package cn.com.chinatelecom.pms.service.impl;

import java.net.InetAddress;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import cn.com.chinatelecom.pms.dao.OperationLogsMapper;
import cn.com.chinatelecom.pms.pojo.OperationLogs;
import cn.com.chinatelecom.pms.service.OperationLogsService;


/**
 * @author liutong01
 * 
 */
@Service
public class OperationLogsServiceImpl implements OperationLogsService {

	@Autowired
	private OperationLogsMapper operationLogsMapper;

	/*
	 * (non-Javadoc)
	 * @see cn.com.chinatelecom.pms.service.OperationLogsService#insert(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	@Async
	public void insert(Date time, String port, String thread, String userInfo, String url, String parameter, String withTime) {
		try {
			if (url != null && !url.equalsIgnoreCase("/pms/main.html") && !url.equalsIgnoreCase("/pms/main!home.html")) {
				OperationLogs record = new OperationLogs();
				record.setTime(time);
				record.setLevelInfo(null);
				record.setHostName(InetAddress.getLocalHost().getHostName() + ":" + port);
				record.setThread(thread);
				record.setUserInfo(userInfo);
				record.setUrl(url);
				record.setParameter(parameter);
				record.setWithTime(withTime);
				
				operationLogsMapper.insert(record);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}

	final Logger logger = LoggerFactory.getLogger(getClass());
}
