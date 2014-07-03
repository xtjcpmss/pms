<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><s:text name="登录页面"></s:text></title>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<style type="text/css">
li{
 list-style: none;

}
body,html {
	height: 950px;
	width: 900px;
	background-color: teal;
}
</style>
</head>
<body >
    <div id="LoginCircle" style="margin-top: 30%; margin-left: 50%;">
        <div id="LoginDoc">
            <div id="SysName" ></div>
	
            <s:form id="LoginFrom" method="post" action="main!loginPage.html">
            <s:actionmessage cssStyle="color: green" />
	<s:actionerror cssStyle="color: red" />
                <div id="SysInput">
                 <ul>
                    <li>项目组：</li>
             <li>
             
             			<s:select list="projecGtroupList" listKey="id" listValue="groupName" cssStyle="width:100px"
							headerKey="" headerValue="-- 全部 --"
							name="projecGtroup.id"></s:select>
        
                       </li> 
                </ul>
                    <ul>
                        <li>用户名：</li>
                        <li>
                            <input id="txtUserName" name="user.uname" value="" type="text" class="InputStyle" maxlength="18" /></li>
                    </ul>
                    <ul>
                        <li>密&nbsp;&nbsp;&nbsp;码：</li>
                        <li>
                            <input name="user.password" type="password" class="InputStyle" value="" id="txtPassword" /></li>
                    </ul>
                    <ul>
                        <li>&nbsp;</li>
                    </ul>
                    <ul>
                        <li></li>
                        <li>
                            <div style="width: 170px; text-align: left">
                                <s:submit class="sexybutton" id="btnLogin" type="sbumit" value="登录" ><span><span><span class="usergo"></span></span></span></s:submit>
                                <button class="sexybutton" type="reset" ><span><span><span class="reload">重置</span></span></span></button>
                            </div>
                        </li>

                    </ul>
                </div>
            </s:form>
            <div class="clear">
            </div>
        </div>
    </div>
    <div id="Copy" style="margin-left:  50%;">
        <font color="red">pms管理系统</font> Version 1.0 由中国电信系统集成提供技术支持！
        <br />
    </div>
</body>
</html>