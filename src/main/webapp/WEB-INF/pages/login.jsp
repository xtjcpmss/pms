<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8" />
			
	<link rel="stylesheet" type="text/css" href="${basePath}/css/mmystyle.css" />
<script src="${basePath}/js/modernizr.custom.63321.js"></script>	
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
<script type="text/javascript" src="${basePath}/js/common.js">//</script>
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
<script type="text/javascript" src="${basePath}/js/common.js">//</script>




		<style>	
			@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700|Handlee);
			body {
				background: #eedfcc url(${basePath}/images/bg3.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.5);
			}
		</style>





</head>
<body>
	<div class="container">

		<section class="main">
		<form class="form-5 clearfix">
			<p>
				<input type="text" id="login" name="login" placeholder="Username"/>
					<input type="password" name="password" id="password" placeholder="Password"/>
			</p>
			<button type="submit" name="submit">
				<i class="icon-arrow-right"></i> <span>Sign in</span>
			</button>
		</form>
		</section>
	</div>
	<!-- jQuery if needed -->
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
	</script>
</body>
</html>
