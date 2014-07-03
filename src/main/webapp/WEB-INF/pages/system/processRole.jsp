<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><s:text name="display.name" /></title>
<link rel="shortcut icon" href="${basePath}/images/logo.ico" type="image/x-icon" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery.last.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/stupidtable.min.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery/jquery-easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-easyui/themes/icon.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/jquery.easyui.min.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-easyui/locale/easyui-lang-zh_CN.js">//</script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
<script type="text/javascript" src="${basePath}/js/common.js">//</script>

<script type="text/javascript">

var rolecount =1;
var roleIdStr='';
// 页面刷新带着上次选择的角色结果
// var roleNameStrQ='';
// var roleShowStrQ='';
/* $(document).ready(function() {
    $("#tempRole input").each(function(index,elems){
    	roleIdStr+=$(elems).val()+',';
    	
    	roleIdStrQ += $(elems).val()+',';
    	roleNameStrQ += $(elems).next("label").text()+",";
    	roleShowStrQ += $(elems).next("label").attr("id")+",";
    });
}); */
function addProcess(obj){
	var temi = [];// id
	var namei = [];// name
	var rolei = [];// role
    $("#tempRole input").each(function(index,elems){
    	if($(obj).is(":checked")==true){
    		temi.push($(elems).val());
    		namei.push($(elems).next("label").text());
    		rolei.push($(elems).next("label").attr("id"));
    	}else{
    		if($(elems).val() != $(obj).val()){
    			temi.push($(elems).val());
    			namei.push($(elems).next("label").text());
    			rolei.push($(elems).next("label").attr("id"));
    		}
    	}
    });
    if($(obj).is(":checked")==true){
   		namei.push($(obj).next("label").text());
		temi.push($(obj).val());
		rolei.push($(obj).next("label").attr("id"));
    }
	
	roleIdStr = '';
// 	roleIdStrQ = "";
// 	roleNameStrQ = "";
// 	roleShowStrQ = "";
	//$('#roleIdStr').val('');
	$("#tempRole").empty();
	for(var i=0;i<temi.length;i++){
		if(rolecount==1){
			$("#tempRole").append("<tr>");
		};
		$("#tempRole").append("<td width='16.66%' align='left'><div title="+rolei[i]+" class='easyui-tooltip'><input name='roleHadProcessList["+i+"].id' type='hidden' value="+temi[i]+" /><label class='label' id="+rolei[i]+">"+namei[i]+"</label></div></td>");
		if(rolecount%6==0){
			$("#tempRole").append("</tr><tr>");
		};
		roleIdStr += temi[i]+",";
		rolecount++;
		
// 		roleIdStrQ += temi[i]+",";
// 		roleNameStrQ += namei[i]+",";
// 		roleShowStrQ += rolei[i]+",";
	}
	$("#processTable").append("</tr>");
	
	rolecount=1;
	$('#roleIdStr').val(roleIdStr);
	
// 	$('#roleIdStrQ').val(roleIdStrQ);
// 	$('#roleNameStrQ').val(roleNameStrQ);
// 	$('#roleShowStrQ').val(roleShowStrQ);
}

</script>

</head>
<body>
	<br />
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<div align="center" style="width: 1200px; margin: 0 auto;">
		<table cellpadding="10px"
			style="border-width: 1px 1px 1px 1px; border-spacing: 0; border-style: solid; border-color: #95B8E7;"
			border="0">
			<caption>
				<div class="panel-self">
					<div class="panel-title-self">流程角色信息</div>
				</div>
			</caption>
			<tbody>
			<s:form action="system!processRole" method="POST">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>角色信息</legend>
							<table width="100%">
								<tr>
									<td align="right">账号：</td>
									<td><s:property value="admin.allowControlAllUser"/></td>
									<td align="right">姓名：</td>
									<td>
									<s:property value="admin.name" /></td>
									<td align="right">性别：</td>
									<td>
									<s:property value="admin.sex"/></td>
									<td align="right">手机：</td>
									<td>
									<s:property value="admin.mob" /></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>查询条件</legend>
							<table width="100%">
								<tr>
									<td align="right">流程分类：</td>
									<td> <s:select
									list="#{1:'订单流程',2:'销售品流程'}" listKey="key" listValue="value" name="role.vtype"/></td>
									<td align="right">店铺：</td>
									<td>
									<%-- <s:select list="shopList" listKey="tsAssetId"
									listValue="tsAssetName" headerKey="" headerValue="-- 全部 --"
									name="role.tsGsNm" ></s:select> --%>
									<s:textfield name="role.name"/>
									</td>
									<td align="right">流程类型：</td>
									<td>
									<s:select list="map" headerKey="" headerValue="-- 全部 --" name="role.ptype"></s:select></td>
									 <td><s:submit value="查询" /></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<s:hidden name="admin.id" />
<!-- 				<input type="hidden" id="roleIdStrQ" name="roleIdStrQ" /> -->
<!-- 				<input type="hidden" id="roleNameStrQ" name="roleNameStrQ" /> -->
<!-- 				<input type="hidden" id="roleShowStrQ" name="roleShowStrQ" /> -->
				</s:form>
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>工作流角色权限（订单）</legend>
							<table width="100%">
								<tbody id="tempRoles">
									<s:iterator value="roleProcessList" status="status">
										<s:if test="#status.first">
											<tr>
										</s:if>
										<td width="16.66%" align="left">
											<div title="${roleProcessList[status.index].role}" class="easyui-tooltip">
												<s:set name="flag" value="false" />
												<s:iterator value="roleHadProcessList" status="status2">
													<s:if test="%{id == roleProcessList[#status.index].id}">
														<s:set name="flag" value="%{#flag || true}" />
													</s:if>
												</s:iterator>
												<s:if test="%{#flag}">
													<input class="checkbox" type="checkbox" name="roleHadProcessList[${status.index}].id" 
													value="${roleProcessList[status.index].id}" id="roleProcessList_${status.index}" 
													checked="checked" onclick="addProcess(this)"/>
													<label class="label" for="roleProcessList_${status.index}" id="${roleProcessList[status.index].role}"><span></span>${roleProcessList[status.index].name}</label>
												</s:if>
												<s:else>
													<input class="checkbox" type="checkbox" name="roleHadProcessList[${status.index}].id" 
													value="${roleProcessList[status.index].id}" id="roleProcessList_${status.index}" 
													onclick="addProcess(this)"/>
													<label class="label" for="roleProcessList_${status.index}" id="${roleProcessList[status.index].role}"><span></span>${roleProcessList[status.index].name}</label>
												</s:else>
											</div>
										</td>
										<s:if test="%{#status.count % 6 == 0 && !#status.last}">
											</tr>
											<tr>
										</s:if>
										<s:if test="#status.last">
											</tr>
										</s:if>
									</s:iterator>
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>
				<s:form id="roleForm" action="system!updateProcessRole" method="POST">
				<tr>
					<td>
						<fieldset class="fieldset-self">
							<legend>已有流程角色</legend>
							<table width="100%">
								<tbody id="tempRole">
									<s:iterator value="roleHadProcessList" status="status">
										<s:if test="#status.first">
											<tr>
										</s:if>
										<td width="16.66%" align="left">
											<div title="${role}" class="easyui-tooltip">
												<%-- <s:set name="flag" value="false" />
												<s:iterator value="admin.processListGoods" status="status2">
													<s:if test="%{id == roleGoodsList[#status.index].id}">
														<s:set name="flag" value="%{#flag || true}" />
													</s:if>
												</s:iterator> --%>
											<input class="role" type="hidden" name="roleHadProcessList[${status.index}].id" value="${id}"/>	
											<label class="label" id="${role}">${name}</label> 
											<%-- <span style="vertical-align:middle;cursor:pointer;"><img src="${basePath}/images/cross.png" style="margin-bottom:-3px"/></span>${name} --%>
												<%-- <input class="checkbox" type="checkbox" name="admin.processListOrder[${status.index}].id" value="${id}" id="roleGoodsList_${status.index}" checked="checked" /> --%>
												
											</div>
										</td>
										<s:if test="%{#status.count % 6 == 0 && !#status.last}">
											</tr>
											<tr>
										</s:if>
										<s:if test="#status.last">
											</tr>
										</s:if>
									</s:iterator>
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr align="center">
					<td><s:hidden name="admin.id" />
						<input type="hidden" id="roleIdStr" name="roleIdStr" />
						<s:hidden name="role.vtype"></s:hidden>
						<button type="submit" ><!-- onclick="roleSubmit()" -->
							<img src="images/apply2.png" alt="保存数据"/> 保存数据
						</button> &#160;&#160;&#160;
						<button type="button" onclick="return history.back();">
						<img src="images/cross.png" alt="返回" /> 返回
				</button></td>
				</tr>
				</s:form>
			</tbody>
		</table>
	</div>
</body>
</html>
