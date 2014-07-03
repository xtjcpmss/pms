<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:s="/struts-tags" version="2.0">
	<jsp:directive.page contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" session="false" />
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>系统异常</title>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<div class="errorMessage" align="center">
		<s:if test="actionErrors.isEmpty">
			程序异常，请稍后再试！<br />
		</s:if>
		<s:else>
			<s:actionerror />
		</s:else>
	</div>
</body>
	</html>
</jsp:root>