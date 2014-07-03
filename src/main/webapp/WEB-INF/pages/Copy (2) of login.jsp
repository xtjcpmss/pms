<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Web 2.0 Login Form by Azmind.com</title>
<link rel="stylesheet" href="${basePath}/css/mystyle.css" type="text/css" />


<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
<script type="text/javascript" src="${basePath}/js/common.js">//</script>

</head>
<body>
	<div id="container">
		<form action="welcome.html">
			<div class="login">LOGIN</div>
			<div class="username-text">Username:</div>
			<div class="password-text">Password:</div>
			<div class="username-field">
				<input type="text" name="username" value="azmind" />
			</div>
			<div class="password-field">
				<input type="password" name="password" value="azmind" />
			</div>
			<input type="checkbox" name="remember-me" id="remember-me" /><label
				for="remember-me">Remember me</label>
			<div class="forgot-usr-pwd">
				Forgot <a href="#">username</a> or <a href="#">password</a>?
			</div>
			<input type="submit" name="submit" value="GO" />
		</form>
	</div>
</body>
</html>
