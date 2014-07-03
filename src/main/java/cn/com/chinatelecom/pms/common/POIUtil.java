package cn.com.chinatelecom.pms.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.com.chinatelecom.pms.dao.RequireKindMapper;
import cn.com.chinatelecom.pms.pojo.Requirement;

public class POIUtil {
	
	@Autowired
	private static RequireKindMapper kindMapper;
	//打印输出需求列表信息
	public static void printRequireListForExcel(List<Requirement> requireList){
		try{
			HSSFWorkbook wb = new HSSFWorkbook(new FileInputStream(""));
			Sheet sheet = wb.createSheet("需求信息");
			//创建行引用
			HSSFRow row = null;
			HSSFCell cell = null;
			
			for(int i=0;i<requireList.size();i++){
				//得到一个列表中的需求对象
				Requirement require = requireList.get(i);
				row = (HSSFRow)sheet.createRow(i);
				//创建十六个Cell，将对应数据放进去
				for(int j=0;j<16;j++){
					cell = row.createCell(j);
					cell.setCellValue(require.getRequireId());
					cell.setCellValue(require.getRequireKindId());
					cell.setCellValue(require.getRequireTypeId());
					cell.setCellValue(require.getRequireTitle());
					cell.setCellValue(require.getRequireContent());
					cell.setCellValue(require.getRequirePriority());
					cell.setCellValue(require.getRequireExpectOnlineDate());
					cell.setCellValue(require.getRequireCreator());
					cell.setCellValue(require.getRequireCreateDate());
					cell.setCellValue(require.getRequireEffectId());
					cell.setCellValue(require.getModuleId());
					cell.setCellValue(require.getEffectProcessId());
					cell.setCellValue(require.getStageId());
					cell.setCellValue(require.getDeveloper());
					cell.setCellValue(require.getTester());
					cell.setCellValue(require.getVersion());
					
				}
				
			}
			
			FileOutputStream out = new FileOutputStream("/webapp/download/");
			wb.write(out);
			out.flush();
			out.close();
			
			HttpServletResponse response = ServletActionContext.getResponse();
			
			prototypeDownload(new File("/webapp/download/require_template.xls"), "", response, true);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	}
	
	
	public static void prototypeDownload(File file,String returnName,HttpServletResponse response,boolean delFlag){
		// 下载文件
		FileInputStream inputStream = null;
		ServletOutputStream outputStream = null;
		try {
			if(!file.exists()) return;
			response.reset();
			//设置响应类型	PDF文件为"application/pdf"，WORD文件为："application/msword"， EXCEL文件为："application/vnd.ms-excel"。  
			response.setContentType("application/octet-stream;charset=utf-8");

			//设置响应的文件名称,并转换成中文编码
			//returnName = URLEncoder.encode(returnName,"UTF-8");
			returnName = response.encodeURL(new String(returnName.getBytes(),"iso8859-1"));	//保存的文件名,必须和页面编码一致,否则乱码
			
			//attachment作为附件下载；inline客户端机器有安装匹配程序，则直接打开；注意改变配置，清除缓存，否则可能不能看到效果
			response.addHeader("Content-Disposition",   "attachment;filename="+returnName);  
			
			//将文件读入响应流
			inputStream = new FileInputStream(file);
			outputStream = response.getOutputStream();
			int length = 1024;
			int readLength=0;
			byte buf[] = new byte[1024];
			readLength = inputStream.read(buf, 0, length);
			while (readLength != -1) {
				outputStream.write(buf, 0, readLength);
				readLength = inputStream.read(buf, 0, length);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			//删除原文件
			
			if(delFlag) {				
				file.delete();
			}
		}
	}
}
