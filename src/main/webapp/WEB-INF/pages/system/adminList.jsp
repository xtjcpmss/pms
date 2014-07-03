<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="p" uri="/tld/page"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
<script type="text/javascript" src="${basePath}/js/common.js">//</script>

<script type="text/javascript">
	$(function() {
		var table = $("#stupidtable").stupidtable();
		table.bind('aftertablesort', function(event, data) {
			var th = $(this).find("th");
			th.find(".arrow").remove();
			var arrow = data.direction === "asc" ? " ↑" : " ↓";
			th.eq(data.column).append(
					'<span class="arrow">' + arrow + '</span>');
		});
	});
</script>
</head>
<body>
	<s:form action="system!adminList">
		<fieldset class="fieldset-self">
			<legend>查询条件</legend>
			<table align="center">
				<tr align="center">
					<td style="padding-right: 50px;">账号： <s:textfield
							name="admin.allowControlAllUser" />
					</td>
					<td style="padding-right: 50px;">姓名： <s:textfield
							name="admin.name" />
					</td>
					<td style="padding-right: 50px;">部门： <s:select
							list="departmentList" name="admin.department.bid" headerKey=""
							headerValue="-- 全部 --" listKey="bid" listValue="bm" />
					</td>
					<td style="padding-right: 50px;">手机： <s:textfield
							name="admin.mob" />
					</td>
					<td><s:submit value="查询" /></td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>用户列表</caption>
		<thead>
			<tr>
				<th data-sort="int">序号</th>
				<th data-sort="int">账号</th>
				<th data-sort="string">姓名</th>
				<th data-sort="string">部门</th>
				<th data-sort="string">性别</th>
				<th data-sort="string">手机</th>
				<th data-sort="string">邮箱</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="adminList" id="admin" status="status">
				<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
					<th><s:property
							value="%{(#request.pageInfo.pageNo - 1) * #request.pageInfo.pageSize + #status.index + 1}" />
					</th>
					<td><s:property value="allowControlAllUser" /></td>
					<td align="left"><s:property value="name" /></td>
					<td align="left"><s:property value="department.bm" /></td>
					<td><s:property value="sex" /></td>
					<td><s:property value="mob" /></td>
					<td align="left"><s:property value="email" /></td>
					<td align="left"><s:property value="zw" /></td>
					<s:url id="url" action="system!admin">
						<s:param name="admin.id">
							<s:property value="#admin.id" />
						</s:param>
					</s:url>
					<s:url id="url2" action="system!dminDel">
						<s:param name="admin.id">
							<s:property value="#admin.id" />
						</s:param>
					</s:url>
					<s:url id="url3" action="system!processRole">
						<s:param name="admin.id">
							<s:property value="#admin.id" />
						</s:param>
						<s:param name="role.vtype">
							<s:property value="1" />
						</s:param>
					</s:url>
					<td align="center">
						<s:a href="%{url3}">流程角色</s:a>&#160;&#160;
						<s:a href="%{url}">编辑</s:a>&#160;&#160;<s:a
							href="%{url2}" onclick="return confirm('确定删除吗？');">删除</s:a></td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="9"><s:if test="adminList.size > 0">
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total"
								count="pageInfo.count" pageSize="pageInfo.pageSize"
								includes="admin.allowControlAllUser,admin.name,admin.department.bid,admin.mob" />
						</div>
					</s:if></td>
			</tr>
		</tfoot>
	</table>
	<div class="pagination-btn-separator"></div>
</body>
</html>