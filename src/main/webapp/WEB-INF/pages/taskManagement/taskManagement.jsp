<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务管理</title>

<link rel="stylesheet" type="text/css"
	href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css">

<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css">

<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js"></script>

<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js"></script>
<script type="text/javascript" charset="GBK" language="javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	$(function(){
		$('#dlgContract').dialog('close');
		$('#dlgHistory').dialog('close');
	})
</script>
<script type="text/javascript" >
	function checkTaskContent(){
		$('#dlgContract').dialog('open');
	} 
	function checkHistory(){
		$('#dlgHistory').dialog('open');
	}
</script>
</head>
<body>
	<s:form action="">
	
		<table id="stupidtable" class="table" width="1000px" height="166" border="0"  cellspacing="0">
			
			<tr>
				<td colspan="8" bgcolor="#c6d7ef"><strong>报表查询</strong></td>
			</tr>
			<tr bgcolor="#deebf7">
				<td width="60" height="24">需求种类:</td>
				
				<td width="50">
					<input  id="kindCombobox" class="easyui-combobox" name="kinds" type="text" width="30" /></td>
				<td width="75">需求类型：</td>
				<td width="139">
					<input  id="typeCombobox" class="easyui-combobox" name="type" type="text" width="80" /></td>
				<td width="63">需求标题：</td>
				<td width="120">
					<input  id="titleCombobwaox" class="easyui-combobox" name="title" type="text" width="80" /></td>
			</tr>

			<tr bgcolor='#deebf7'>
				<td>模块:</td>
				<td>
					<input  id="moduleCombobox" class="easyui-combobox" name="module" type="text" width="80" /></td>
				<td>流程：</td>
				<td colspan="3" >
					<input id="flowCombobox" class="easyui-combobox" name="flow" type="text" width="360" /></td>
				
			</tr>

			<tr bgcolor="#deebf7">
				<td>模块负责人:</td>
				<td>
					<input  id="modulePersonCombobox" class="easyui-combobox" name="modulePerson" type="text" width="80" /></td>
				<td>任务负责人</td>
				<td>
					<input  id="taskPersonCombobox" class="easyui-combobox" name="taskPerson" type="text" width="80" /></td>
				<td>创建人</td>
				<td>
					<input  id="createPersonCombobox" class="easyui-combobox" name="createPerson" type="text" width="80" /></td>
			</tr>
			
			<tr bgcolor="#deebf7">
				<td>任务类型:</td>
				<td>
					<input  id="taskTypeCombobox" class="easyui-combobox" name="taskType" type="text" width="80" /></td>
				<td>是否延期</td>
				<td>
					<input  id="delayCombobox" class="easyui-combobox" name="delay" type="text" width="80" /></td>
				<td>执行机构</td>
				<td>
					<input  id="actuatorCombobox" class="easyui-combobox" name="actuator" type="text" width="80" /></td>
					
			</tr>
			
			<tr bgcolor="#deebf7">
				<td>创建执行日期:</td>
				<td width="100">
					<input  id="createTime1Datetimebox" class="easyui-datetimebox"  type="text" name="createTime1"    />&nbsp;&nbsp;&nbsp;/
					<input  id="createTime2Datetimebox" class="easyui-datetimebox"  type="text" name="createTime2"   /></td>
				<td>计划开始日期</td>
				<td>
					<input  id="startTime1Datetimebox" class="easyui-datetimebox" name="startTime1" type="text" width="80" />&nbsp;&nbsp;&nbsp;/
					<input  id="startTime2Datetimebox" class="easyui-datetimebox" name="startTime2" type="text" width="80" />
					</td>
				<td>计划完成日期</td>
				<td>
					<input  id="endTime1Datetimebox" class="easyui-datetimebox" name="endTime1" type="text" width="80" />&nbsp;&nbsp;&nbsp;/
					<input  id="endTime2Datetimebox" class="easyui-datetimebox" name="endTime2" type="text" width="80" />
					</td>
					
			</tr>
			
				<tr bgcolor="#deebf7">
				<td>需求影响ID:</td>
				<td>
					<input  id="affectReqCombobox" class="easyui-combobox" name="affectReq" type="text" width="80" /></td>
				<td>优先级</td>
				<td>
					<input  id="priorityCombobox" class="easyui-combobox" name="priority" type="text" width="80" /></td>
				<td>任务状态</td>
					<td colspan="3">
						<label><input name="checkboxStage" type="checkbox" value="未开始" align="top" />未开始</label> 
						<label><input name="checkboxStage" type="checkbox" value="进行中" />进行中</label>
						<label><input name="checkboxStage" type="checkbox" value="暂停" />暂停</label>
						<label><input name="checkboxStage" type="checkbox" value="已完成" />已完成</label>
						<label><input name="checkboxStage" type="checkbox" value="已取消" />已取消</label>
					</td>
			</tr>
			<tr bgcolor="#deebf7">
				<td height="10">阶段</td>
				<td colspan="7">
						<label><input name="checkboxStage" type="checkbox" value="需求分析" />需求分析</label> 
						<label><input name="checkboxStage" type="checkbox" value="开发中" /> 开发中 </label>
						<label><input name="checkboxStage" type="checkbox" value="开发完成" /> 开发完成 </label>
						<label><input name="checkboxStage" type="checkbox" value="测试中" /> 测试中 </label>
						<label><input name="checkboxStage" type="checkbox" value="测试完成" /> 测试完成 </label>
						<label><input name="checkboxStage" type="checkbox" value="SIT/UAT" /> SIT/UAT </label>
						<label><input name="checkboxStage" type="checkbox" value="版本机验证" /> 版本机验证 </label>
						<label><input name="checkboxStage" type="checkbox" value="已上线" /> 已上线</label>
				</td>
			</tr>
			<tr bgcolor="#deebf7">
				<td height="25" colspan="8">
					<input type="submit" value="查询" /> 
					<input name="reset" type="reset" value="重置" />
				</td>
			</tr>
		</table>
		
	</s:form>
	
		<table id="stupidtable" class="table" width="1000px" height="166" cellpadding="0" cellspacing="0">
			<tr><td colspan="8" bgcolor="#c6d7ef"><strong>报表信息</strong></td></tr>
			
			<tr bgcolor="#deebf7">
			<td>
				<table id="stupidtable" class="table"  align="center" width="98%">
					<tr bgcolor="#c6d7ef">
						
						<td colspan="16"><input type="button" value="导出报表" name="导出报表" onclick="deriveReport();"/>
							<input height="16" type="button" value="导出并发送" name="导出并发送" onclick="deriveAndSend();"/>
							<input type="button" value="查看执行历史" name="查看执行历史" onclick="checkHistory();"/>
							<input type="button" value="查看任务内容" name="查看任务内容" onclick="checkTaskContent();"/>
						</td>
					</tr>
				</table>
				<table id="stupidtable" class="table" align="center" 
				width="98%" border="1" cellspacing="0" bordercolor="#66CCFF" bordercolor="#c6d7ef">
					<TBODY>
					<tr bgcolor="#d4d4d4">
						<td><img alt="" src="${basePath}/js/jquery/jquery-easyui/themes/icons/test1.png"></td>
						<td align="center">模块</td>
						<td align="center">流程/功能</td>
						<td align="center">需求影响ID</td>
						<td align="center">任务ID</td>
						<td align="center">优先级</td>
						<td align="center">需求类型</td>
						<td align="center">需求种类</td>
						<td align="center">需求标题</td>
						<td align="center">负责人</td>
						<td align="center">任务类型</td>
						<td align="center">任务状态</td>
						<td align="center">计划开始</td>
					</tr>
					<tr height="18"><td><img alt="" src="${basePath}/js/jquery/jquery-easyui/themes/icons/test2.png"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td>
						<td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td>
					</tr>
					
					<tr id="tr" onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" onclick="clickEvent(this);" align="center">
							<td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td>
						</tr>
					<!-- 迭代数据 -->
					
					<tr><td colspan="13">
					<div id="itDiv">
					<s:iterator value="list" id="obj" status="status">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							
						</tr>
					</s:iterator>
					</div>
					</td></tr>
					</TBODY>
					<TFOOT>
						<tr>
						<td colspan="13">
						这里分页
						<s:if test="list.size > 0">
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total" pageSize="pageInfo.pageSize"
								count="pageInfo.count"
								includes="ectNameSelect"/>
						</div>
					</s:if>
				</td>
			</tr>
					</TFOOT>
				</table>
			
		</table>
		
	<div id="dlgContract" class="easyui-dialog" title="查看任务信息"
		data-options="iconCls:'icon-save',buttons: '#dlg-buttons',resizable:true,modal:true"
		style="width: 1010px; height: 413px; padding: 5px; position: relative; top: 5px;">
		<table>
			<tr>
				<td>任务类型</td>
				<td><input type="text" /></td>
				<td>需求影响ID</td>
				<td><input type="text" /></td>
				<td>任务ID</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>负责人</td>
				<td><input type="text" /></td>
				<td>工作量</td>
				<td><input type="text" /></td>
				<td>计划开始</td>
				<td><input type="text" /></td>
				<td>计划完成</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>任务状态</td>
				<td><input type="text" /></td>
				<td>延期</td>
				<td><input type="text" /></td>
				<td>实际开始</td>
				<td><input type="text" /></td>
				<td>实际完成</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>任务内容</td>
				<td colspan="7"><textarea ></textarea></td>
			</tr>
			<tr>
				<td>交付物</td>
				<td colspan="7"><textarea ></textarea></td>
			</tr>
			<tr>
				<td>备注</td>
				<td colspan="7"><textarea ></textarea></td>
			</tr>
			
		</table>
	</div>
	
		<div id="dlgHistory" class="easyui-dialog" title="查看执行历史" 
		data-options="iconCls:'icon-save',buttons: '#dlg-buttons',resizable:true,modal:true"
		style="width: 1010px; height: 413px; padding: 5px; position: relative; top: 5px;">
		<table id="stupidtable" class="table" align="center" 
				width="98%" border="1" cellspacing="0" bordercolor="#66CCFF" bordercolor="#c6d7ef">
				<TBODY>
			<tr bgcolor="#d4d4d4">
				<td><img alt="" src="${basePath}/js/jquery/jquery-easyui/themes/icons/test1.png"></td>
				<td align="center">执行人</td>
				<td align="center">进度%</td>
				<td align="center">更新日期</td>
				<td align="center">进展</td>
				<td align="center">主要问题和解决方案</td>
			</tr>
			<tr bgcolor="#c6d7ef">
				<td>1</td>
				<td >绍伟</td>
				<td >100%</td>
				<td >2014-06-05</td>
				<td >变更数据字典</td>
				<td ></td>
			</tr>
			<tr bgcolor="#c6d7ef">
				<td>2</td>
				<td ></td>
				<td ></td>
				<td ></td>
				<td ></td>
				<td ></td>
			</tr>
			<tr bgcolor="#c6d7ef">
				<td>3</td>
				<td ></td>
				<td ></td>
				<td ></td>
				<td ></td>
				<td ></td>
			</tr>
		</table>
	</div>
</body>
</html>






