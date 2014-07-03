<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/stupidtable.min.js">//</script>


<link href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>

<script type="text/javascript">
	
	function submitClick(){
		var nodes = $('#tt').tree('getChecked');
		for(var i=0; i<nodes.length; i++) {
			if (nodes[i].id != '' && nodes[i].id != 'null' && nodes[i].id != null) {
				// alert("<input type='hidden' name='menuIDList' value='" + nodes[i].id + "' />");
				$("#form").append("<input type='hidden' name='menuIDList' value='" + nodes[i].id + "' />");
			}
		}
	}
</script>
</head>
<body>
	<br />
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<div align="center">
		<s:form id="form" action="system!roleUpdate" method="POST">
			<table cellpadding="10px" style="border-width: 1px 1px 1px 1px; border-spacing: 0; border-style: solid; border-color: #95B8E7;">
				<caption>
					<div class="panel-self">
						<div class="panel-title-self">
							角色信息
						</div>
					</div>
				</caption>
				<tbody>
					<tr>
						<td><b>名称：</b></td>
						<td><s:textfield name="role.name" /></td>
						<td><b>真实角色：</b></td>
						<td><s:textfield name="role.role" /></td>
					</tr>
					<tr align="center">
						<td colspan="8">
							<hr width="100%" align="center" />
						</td>
					</tr>
					<tr>
						<td colspan="8"><b>菜单权限</b><hr width="100%" align="center" /></td>
					</tr>
					<tr>
						<td colspan="8">
							<ul id="tt" class="easyui-tree" data-options="url:'system!roleTree.html?role.id=${role.id}',animate:true,checkbox:true,cascadeCheck:false,onlyLeafCheck:true"></ul>
						</td>
					</tr>
					<tr align="center">
						<td colspan="8">
							<s:hidden name="role.id" />
							
							<button type="submit" onclick="return submitClick();">
								<img src="images/apply2.png" alt="保存数据" /> 保存数据
							</button> &#160;&#160;&#160;
							<button type="button" onclick="return history.back();">
								<img src="images/cross.png" alt="返回" /> 返回
							</button>
						</td>
					</tr>
				</tbody>
			</table>
		</s:form>
	</div>
</body>
</html>
