<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="p" uri="/tld/page"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(function() {
		var table = $("#stupidtable").stupidtable();
		table.bind('aftertablesort', function(event, data) {
			var th = $(this).find("th");
			th.find(".arrow").remove();
			var arrow = data.direction === "asc" ? " ↑" : " ↓";
			th.eq(data.column).append('<span class="arrow">' + arrow + '</span>');
		});
	});

	function forQuery() {
	  if(validateForm()){
	    document.forms[0].action="";
	    document.forms[0].submit();
	   }
	}
	
</script>
</head>
<body>
	<s:form action="">
		<fieldset class="fieldset-self">
			<legend>系统配置信息查询</legend>
			<table align="center" width="100%" border="0">
				<tr>
					<td align="left" width="50%">
						服务类型：
						<s:textfield id="" name="" cssStyle="width:50%"/>
					</td>
					<td align="left" width="50%">
						环境名称：
						<s:textfield id="" name="" cssStyle="width:50%"/>
					</td>
				</tr>
				<tr>
					<td align="left" width="50%">
						配置名称：
						<s:textfield id="" name="" cssStyle="width:50%"/>
					</td>
					<td align="left" width="50%">
						系统模块：
						<s:textfield id="" name="" cssStyle="width:50%"/>
					</td>
				</tr>
				<tr>
					<td width="50%" colspan="2">
					   <button type="button" onclick="return forQuery();">查询</button>
					   <button type="button" onclick="return forQuery();">重置</button>
					</td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	<s:if test="1==1">
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>
				配置信息列表
		</caption>
		<thead>
			<tr>
				<th data-sort="string">系统模块</th>
				<th data-sort="string">环境名称</th>
				<th data-sort="string">配置名称</th>
				<th data-sort="string">IP</th>
				<th data-sort="string">端口</th>
				<th data-sort="string">密码</th>
				<th data-sort="string">用户名</th>
				<th data-sort="string">创建者</th>
				<th data-sort="string">创建时间</th>
				<th data-sort="string">修改者</th>
				<th data-sort="string">修改时间</th>
			</tr>
		</thead>
		<tbody>
				<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
					<td align="left"><s:property value="" /></td>
					<td align="left"><s:property value="" /></td>
					<td align="left"><s:property value="" /></td>
					<td align="left"><s:property value="" /></td>
					<td align="left"><s:property value="" /></td>
					<td align="left"">
					   <s:property value="" />
					</td>
					<td align="left">
					   <s:property value="" />
					</td>
					<td align="left">
					   <s:property value="" />
					</td>
					<td align="left">
					   <s:property value="" />
					</td>
					<td align="left">
					   <s:property value="" />
					</td>
					<td align="left">
					   <s:property value="" />
					</td>
				</tr>	
		</tbody>
	</table>
	</s:if>
</body>
</html>
