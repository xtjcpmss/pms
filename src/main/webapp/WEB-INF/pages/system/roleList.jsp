<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:s="/struts-tags" xmlns:p="/tld/page" version="2.0">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<jsp:text>
		<![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
	</jsp:text>
	<jsp:text>
		<![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
	</jsp:text>
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery.last.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/stupidtable.min.js">
	//
</script>
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
	<s:form action="system!roleList">
		<fieldset class="fieldset-self">
			<legend>查询条件</legend>
			<table align="center">
				<tr align="center">
					<TD style="padding-right: 50px;">角色名称： <s:textfield
							name="role.name" />
					</TD>
					<td><s:submit value="查询" /></td>
				</tr>
			</table>
		</fieldset>
	</s:form>
	<s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
	<br />
	<table id="stupidtable" width="100%" align="center" class="table">
		<caption>角色列表</caption>
		<thead>
			<tr>
				<th data-sort="int">序号</th>
				<th data-sort="int">角色名称</th>
				<th data-sort="int">真实角色</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="roleList" status="status">
				<tr onmouseover="this.bgColor='#EAF2FF'"
					onmouseout="this.bgColor='#FFFFFF'" align="center">
					<th><s:property
							value="%{(#request.pageInfo.pageNo - 1) * #request.pageInfo.pageSize + #status.index + 1}" />
					</th>
					<td><s:property value="name" /></td>
					<td><s:property value="role" /></td>
					<s:url id="url" action="system!role">
						<s:param name="role.id">
							<s:property value="id" />
						</s:param>
					</s:url>
					<s:url id="url2" action="system!roleDel">
						<s:param name="role.id">
							<s:property value="id" />
						</s:param>
					</s:url>
					<td align="center"><s:a href="%{url}">编辑</s:a>&#160;&#160;<s:a
							href="%{url2}" onclick="return confirm('确定删除吗？');">删除</s:a></td>
				</tr>
			</s:iterator>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4"><s:if test="roleList.size > 0">
						<div align="right">
							<p:pages pageNo="pageInfo.pageNo" total="pageInfo.total" pageSize="pageInfo.pageSize"
								count="pageInfo.count" includes="role.name" />
						</div>
					</s:if></td>
			</tr>
		</tfoot>
	</table>
</body>
	</html>
</jsp:root>