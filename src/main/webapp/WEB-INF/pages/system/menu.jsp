<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<link
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/themes/default/easyui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/themes/icon.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/jquery.easyui.min.js">
	//
</script>
<script type="text/javascript"
	src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">
	//
</script>
<script type="text/javascript">
	$(document).ready(function() {
		forQuery();
	});


	function submitClick() {
		var nodes = $('#tt').tree('getChecked');
		for ( var i = 0; i < nodes.length; i++) {
			if (nodes[i].id != '' && nodes[i].id != 'null'
					&& nodes[i].id != null) {
				// alert("<input type='hidden' name='menuIDList' value='" + nodes[i].id + "' />");
				$("#form")
						.append(
								"<input type='hidden' name='menuIDList' value='" + nodes[i].id + "' />");
			}
		}
	}

	function forQuery() {
		$('#tt').tree({
			url : 'system!roleTree.html?role.id=${role.id}',
			animate : true,
			//checkbox : true,
			lines : true,
			onContextMenu : function(e, title) {
				e.preventDefault();
				$("#tabsMenu").menu('show', {
					left : e.pageX,
					top : e.pageY
				}).data("tabTitle", title.text);
			}
		});
	}

	//菜单明细信息
	function forLook() {
		var node = $('#tt').tree('getSelected');
		if (node) {
			var s = node.text;
			if (node.attributes) {
				s += "," + node.attributes.p1 + "," + node.attributes.p2;
			}
			//alert(s);
			//alert(node.id);
			$("#queryMenu").attr("src","system!queryMenuMx.html?flag=mx&menu.id="+node.id);
		}
	}
	
	//菜单修改
	function forEdit(){
		var node = $('#tt').tree('getSelected');
		if (node) {
			var s = node.text;
			if (node.attributes) {
				s += "," + node.attributes.p1 + "," + node.attributes.p2;
			}
			//alert(s);
			//alert(node.id);
			$("#queryMenu").attr("src","system!queryMenuMx.html?flag=edit&menu.id="+node.id);
		}
	}
	//增加同级菜单
	function forAddSame(){
		var node = $('#tt').tree('getSelected');
		if (node) {
			var s = node.text;
			if (node.attributes) {
				s += "," + node.attributes.p1 + "," + node.attributes.p2;
			}
			//alert(s);
			//alert(node.id);
			$("#queryMenu").attr("src","system!queryMenuMx.html?flag=addSame&menu.id="+node.id);
		}
	}
	//增加下级菜单
	function forAddDown(){
		var node = $('#tt').tree('getSelected');
		if (node) {
			var s = node.text;
			if (node.attributes) {
				s += "," + node.attributes.p1 + "," + node.attributes.p2;
			}
			//alert(s);
			//alert(node.id);
			$("#queryMenu").attr("src","system!queryMenuMx.html?flag=addDown&menu.id="+node.id);
		}
	}
</script>
<style type="text/css">
body {
	margin: auto;
	margin-top:0;
	margin-left:0;
	}
#side { border:1px solid #95B8E7; background: #E8F1FF; height: 500px; width: 160px; float: left; }
#main { border:1px solid #6AABCB; background: #FFFDFE; height: 500px; width: 100%; margin-left: 160px; }
.xzcd { font-size:12px; background: #E8F1FF; border:1px solid #95B8E7; height:25px; line-height:25px; }
.srk { background-color: #F6F6F6; height:120px; border: 1px  #E8F1FF; border-bottom-style: dashed;}
.box { margin:auto; margin-top:12px; margin-left:40%; }
.shur {margin-left:5px; margin-top:5px; float: left;}
.font1 { margin-left:40px; font-size:12px; color:#000; width:80px; float:left; }
.font2 { margin-left:40px; font-size:12px; color:#000; width:80px; }
.font3 { margin-top:5px; margin-left:125px; font-size:12px; color:#258FC2; width:80px; float: left }
</style>
</head>
<body>
	<s:form id="form" action="system!roleUpdate" method="POST">
		<table width="100%" style="height: 100%">
			<tr>
				<td width="200px" valign="top"><div id="side"
						style="overflow: auto; height: 550px; width: 300px;">

						<table>
							<caption>
								<span style="font-size: 20px;">菜单信息</span>
							</caption>
							<tbody>
								<tr>
									<td>
										<ul id="tt" class="easyui-tree"
											data-options="url:'system!roleTree.html?role.id=${role.id}',animate:true"></ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div></td>
				<td valign="top"><iframe id="queryMenu" name="menuframe"
						frameborder="0" width="100%"
						src="system!queryMenuMx.html" height="550px;"></iframe></td>
			</tr>
		</table>
	</s:form>
	<div id="tabsMenu" class="easyui-menu" style="width: 120px;">
		<div onclick="forLook()">菜单明细</div>
		<div onclick="forEdit()">菜单编辑</div>
		<div onclick="forAddSame()">增加同级菜单</div>
		<div onclick="forAddDown()">增加下级菜单</div>
	</div>
</body>
</html>
