<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="shortcut icon" href="${basePath}/images/logo.ico"
	type="image/x-icon" />
<script type="text/javascript"
	src="${basePath}/js/jquery/jquery.last.min.js">
	//
</script>
<link
	href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${basePath}/js/jquery/jquery-easyui/themes/icon.css"
	type="text/css" />
<script type="text/javascript"
	src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">
	//
</script>
<script type="text/javascript"
	src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">
	//
</script>
<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css" />
<style>
.con {
	width: 100%;
	height: 600px;
	display: table;
}

.txt {
	vertical-align: middle;
	display: table-cell;
}
</style>
</head>
<body>
	<div class="con">
		<div class="txt" align="center"><font color="red">请不要重复提交！</font></div>
	</div>
</body>
</html>