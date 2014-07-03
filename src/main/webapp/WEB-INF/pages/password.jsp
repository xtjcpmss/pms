<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:s="/struts-tags" version="2.0">
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
<link href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<s:if test="hasActionErrors()">
		<div class="ui-state-error ui-corner-all"
			style="margin-bottom: 20px; padding: 0 .7em;">
			<s:actionerror />
		</div>
	</s:if>
	<s:if test="hasActionMessages()">
		<div class="ui-state-highlight ui-corner-all"
			style="margin-bottom: 20px; padding: 0 .7em;">
			<s:actionmessage />
		</div>
	</s:if>
	<div align="center" style="padding: 50px">
		<s:form action="password!update">
			<table>
				<tr>
					<td>旧密码</td>
					<td><s:password name="oldPassword"></s:password></td>
				</tr>
				<tr>
					<td>新密码</td>
					<td><s:password name="user.password"></s:password></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td>
						<!-- 不提交至服务器 -->
						<input type="password" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><s:submit value="修改密码" /></td>
				</tr>
			</table>
		</s:form>
	</div>
</body>
	</html>
</jsp:root>