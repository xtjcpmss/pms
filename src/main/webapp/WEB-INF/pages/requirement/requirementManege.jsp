<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>需求管理</title>

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
		
		//需求种类下拉列表框 
		$("#kindCombobox").combobox({
			url:'require!loadAllKind.html',
			multiple:'true',
			valueField:'requireKindId', 
			textField:'requireKindName', 
			panelHeight:'auto',
			editable:false, //不允许手动输入
			onLoadSuccess: function () { //数据加载完毕事件
				
				alert("加载完成");
	        	
	         }      
		});
		
		//需求类型
		$("#typeCombobox").combobox({
			url:'require!loadAllType.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'requireTypeId', 
			textField:'requireTypeName'
		});
		
		//模块
		$("#moduleCombobox").combobox({
			url:'require!loadAllModule.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'moduleId', 
			textField:'moduleName' 
		});
		
		//流程
		$("#processCombobox").combobox({ 
			url:'require!loadAllProcess.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'processId', 
			textField:'processName' 
		});
		
		//创建人
		$("#creatorCombobox").combobox({
			url:'require!loadAllMember.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'memberId', 
			textField:'memberName' 
		});
		
		//优先级
		$("#priority").combobox({
			url:'require!loadAllPriority.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'priorityId', 
			textField:'priorityName' 
		});
		
		//执行机构
		$("#executeOrgCombobox").combobox({
			url:'require!loadAllExecuteOrg.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'executeOrgId', 
			textField:'executeOrgName' 
		});
		
		//负责人
		$("#chargePersonCombobox").combobox({
			url:'require!loadAllProcess.html', 
			editable:false, //不允许手动输入
			panelHeight:"auto",
			valueField:'processId', 
			textField:'processName' 
		});
		
		$("#createDatetimebox").datebox({
			editable:false
		});
		
		$("#expectDatetimebox").datebox({
			editable:false
		});
		
	});
	
	
		
	
	
	
	
	
	/**方法操作**/
	//导出报表
	function deriveReport(){
		alert("导出报表");
		$.ajax({
			url:'require!printData.html',
					
		});
		
		
	}
	//导出并发送
	function deriveAndSend(){
		alert("导出并发送");
	}
	//查看需求
	function checkRequire(){
		alert("查看需求");
	}
	//批量查询
	function checkMore(){
		alert("批量查询");
	}
	
	function clickEvent(){
		
		var colors = new Array();;
		for(var i=0;i<trs.size();i++){
			colors[i] = trs[i].css("background");
		}
		$(this).css({background: "#f9deb0"});
		
		
	}
	
</script>

</head>
<body>
	<s:form action="">
	
		<table id="stupidtable" class="table" width="1000px" height="166" border="0"  cellspacing="0">
			
			<tr>
				<td colspan="8" bgcolor="#c6d7ef"><strong>需求报表查询</strong></td>
			</tr>
			<tr bgcolor="#deebf7">
				<td width="66" height="24">需求种类:</td>
				<s:hidden name="requireKindHidden" id="requireKindHidden"></s:hidden>
				<td width="144">
					<input  id="kindCombobox" class="easyui-combobox" name="kinds" type="text" width="120" /></td>
				
				<td width="75">需求类型：</td>
				<td width="139">
					<input  id="typeCombobox" class="easyui-combobox" name="text22" type="text" width="120" /></td>
				<td width="63">模块：</td>
				<td width="120">
					<input  id="moduleCombobox" class="easyui-combobox" name="text222" type="text" width="120" /></td>
				<td width="107">流程：</td>
				<td width="162">
					<input  id="processCombobox" class="easyui-combobox" name="text224" type="text" width="120" /></td>
			</tr>



			<tr bgcolor='#deebf7'>
				<td>创建人:</td>
				<td>
					<input  id="creatorCombobox" class="easyui-combobox" name="text2" type="text" width="120" /></td>
				<td>创建日期：</td>
				<td>
					<input id="createDatetimebox" class="easyui-datetimebox" name="text223" type="text" width="50" /></td>
				<td>优先级：</td>
				<td>
					<input  id="priority" class="easyui-combobox" name="text223" type="text" width="120" /></td>
				<td>期望上线日期：</td>
				<td>
					<input id="expectDatetimebox" class="easyui-datetimebox" name="text225" type="text" width="120" /></td>
			</tr>

			<tr bgcolor="#deebf7">
				<td>执行机构:</td>
				<td>
					<input  id="executeOrgCombobox" class="easyui-combobox" name="text3" type="text" width="120" /></td>
				<td>模块负责人</td>
				<td>
					<input  id="chargePersonCombobox" class="easyui-combobox" name="text24" type="text" width="120" /></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
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
	<s:hidden id="multipleArray" name="orderInfo.orderStatusMultipleArray"/>
	
		<table id="stupidtable" class="table" width="1000px" height="166" cellpadding="0" cellspacing="0">
			<tr><td colspan="8" bgcolor="#c6d7ef"><strong>需求报表信息</strong></td></tr>
			
			<tr bgcolor="#deebf7">
			<td>
				<table id="stupidtable" class="table"  align="center" width="98%">
					<tr bgcolor="#c6d7ef">
						
						<td colspan="16"><input type="button" value="导出报表" name="导出报表" onclick="deriveReport();"/>
							<input height="16" type="button" value="导出并发送" name="导出并发送" onclick="deriveAndSend();"/>
							<input type="button" value="查看需求" name="查看需求" onclick="checkRequire();"/>
							<input type="button" value="批量查询" name="批量查询" onclick="checkMore();"/>
						</td>
					</tr>
				</table>
				<table id="stupidtable" class="table" align="center" 
				width="98%" border="1" cellspacing="0" bordercolor="#66CCFF" bordercolor="#c6d7ef">
					<TBODY>
					<tr bgcolor="#d4d4d4">
						<td><img alt="" src="${basePath}/js/jquery/jquery-easyui/themes/icons/test1.png"></td>
						<td align="center">需求ID</td>
						<td align="center">需求种类</td>
						<td align="center">需求类型</td>
						<td align="center">需求标题</td>
						<td align="center">需求内容</td>
						<td align="center">优先级</td>
						<td align="center">期望上线日期</td>
						<td align="center">创建人</td>
						<td align="center">创建日期</td>
						<td align="center">需求影响ID</td>
						<td align="center">模块</td>
						<td align="center">流程/功能</td>
						<td align="center">阶段</td>
						<td align="center">开发人员</td>
						<td align="center">测试人员</td>
						<td align="center">文档版本</td>  
					</tr>
					<tr height="18"><td><img alt="" src="${basePath}/js/jquery/jquery-easyui/themes/icons/test2.png"></td><td bgcolor="#fffff7"></td><td></td><td></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td>
						<td></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td bgcolor="#fffff7"></td><td></td><td bgcolor="#fffff7"></td><td></td><td></td><td></td>
					</tr>
					
					<tr id="tr" onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" onclick="clickEvent(this);" align="center">
							<td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
					<tr onmouseover="this.bgColor='#FFFFFF'"
					onmouseout="this.bgColor='#deebf7'" align="center">
							<td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
					<!-- 迭代数据 -->
					
					<tr><td colspan="16">
					<div id="itDiv">
					<s:iterator value="requireList" id="requirement" status="status">
						<tr>
							<td></td>
							<td><s:property value="requirement.requireId"/></td>
							<td><s:property value="requireKindId"/></td>
							<td><s:property value="requireTypeId"/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
						</tr>
					</s:iterator>
					</div>
					</td></tr>
					
					
					</TBODY>
					<TFOOT>
						<tr>
						<td colspan="17">
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

	
</body>
</html>






