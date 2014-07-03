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
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<link href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
	      html,body{
            padding:0;
            margin:0;
            width:100%;
            height:100%;
        }
        #main_bg{
        	overflow:hidden;
            width:100%;
            height:100%;
        }
        
        #broad{
        	opacity:0.6;
        	filter:alpha(opacity=60);
        	-moz-opacity:0.6;
        }
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".list div ul li").each(function(index) {
			if (index % 2 == 1) {
				$(this).addClass("on");
			}
		});
		
		// 页面加载是增加背景图，同时绑定页面resize事件，实现背景图同比例自适应大小；
		$("body").append("<div id='main_bg'/>");
        $("#main_bg").append("<img src='${basePath}/images/main/bg-main.gif' id='bigpic'>");
        cover();
        $(window).resize(function(){
            cover();
        });

     function cover(){
          var win_width= $(window).width();
          $("#bigpic").css({'width':win_width});
     }
	});
</script>

</head>
<body>
	<table id="broad" width="100%" align="center" border="0" style="position:absolute;top:10px;">
		<tr align="center">
			<td>
				<div class="easyui-panel" title="系统公告" style="height:200px;padding:10px;width: 100%" data-options="fit:true">
		            <ul>
		            	<s:iterator value="noticeList" id="notice">
							<li style="padding-bottom: 5px"><s:property value="type"/>：<a href="javascript:void(0)" onclick="$('#${id}').window('open');"><s:property value="title"/></a>【<s:property value="operationUser"/>-<s:date name="operationTime" format="MM/dd" />】</li>
							<div id="${id}" class="easyui-window" title="<s:property value="title"/>" data-options="modal:true,closed:true" style="width:700px;height:400px;padding:10px;">
						        <s:property value="content" escape="false" />
						        <p align="right">
						        <s:property value="operationUser" /><br />
						        <s:date name="operationTime" format="yyyy-MM-dd HH:mm:ss" />
						        </p>
						    </div>
						</s:iterator>
		            </ul>
		        </div>
			</td>
			<!-- <td>
				<div class="easyui-panel" title="待办任务" style="height:200px;padding:10px;" data-options="fit:true">
		            <p style="font-size:14px">待办任务</p>
					<ul>
						<li>待办任务11111111111133333333333333333333333333333333333333333333333333331</li>
						<li>待办任务1111111111111</li>
						<li>待办任务1111111111111</li>
					</ul>
				</div>
			</td> -->
			<td>
				<div class="easyui-panel" title="快速访问" style="height:200px;padding:10px;" data-options="fit:true">
					<table align="center">					
						<s:iterator value="trList" status="status0" >
						<tr>
							<s:iterator value="visitList" id="obj" status="status" begin="%{#status0.index*4}" end="%{(#status0.index+1)*4-1}">
							<td style="padding:10px;">
								<div title="${obj.ectTip }" class="easyui-tooltip"><a href="${obj.ectUrl }" target="_blank">${obj.ectName}</a></div>
							</td>
							</s:iterator>
						</tr>	
						</s:iterator>								
					</table>
		        </div>
			</td>
		</tr>
		<!-- <tr align="center">
			<td style="padding:10px;">
				<div id="p" class="easyui-panel" title="订单处理" style="width:320px;height:200px;padding:10px;">
					<p style="font-size:14px">待办任务</p>
					<ul>
						<li>待办任务1111111111111</li>
						<li>待办任务1111111111111</li>
						<li>待办任务1111111111111</li>
					</ul>
		        </div>
			</td>
		</tr> -->
	</table>
</body>
</html>
