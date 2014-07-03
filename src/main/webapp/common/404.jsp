<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=UTF-8" 
		pageEncoding="UTF-8" session="false"/>
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Error 404</title>
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<style type="text/css">
BODY {
	MARGIN: 0px;
	BACKGROUND-COLOR: #000000;
	FONT-FAMILY: Comic Sans MS;
	background-repeat: repeat;
	background-color: #D9D9D9;
}

TD {
	FONT-FAMILY: Comic Sans MS
}

TH {
	FONT-FAMILY: Comic Sans MS
}

.style6 {
	FONT-WEIGHT: bold;
	FONT-SIZE: 12px
}

.style7 {
	FONT-SIZE: 18px
}

.style8 {
	FONT-SIZE: 12px
}

.style9 {
	FONT-SIZE: 24px;
	FONT-FAMILY: "楷体_GB2312"
}

.style10 {
	COLOR: #ff0000
}

td,th {
	color: #666;
}

a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #666;
}

a:link {
	text-decoration: none;
	color: #06F;
}

a:visited {
	text-decoration: none;
	color: #09F;
}

a:hover {
	text-decoration: none;
	color: #09F;
}

a:active {
	text-decoration: none;
	color: #09F;
}
</style>
</head>
<body bgcolor="#ececec">
	<div align="center" style="padding-top: 3em;letter-spacing: 3mm;">
		<p align="center">
			<img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/images/404.jpg" />
		</p>
	</div>
</body>
</html>
</jsp:root>