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
//
</script>

</head>
<body>
	<br />
	<s:actionmessage cssStyle="color: green;" />
	<s:actionerror cssStyle="color: red;" />
	<div align="center" style="width: 1200px; margin: 0 auto;">
		<s:form action="system!adminUpdate" method="POST">
			<table cellpadding="10px"
				style="border-width: 1px 1px 1px 1px; border-spacing: 0; border-style: solid; border-color: #95B8E7;"
				border="0">
				<caption>
					<div class="panel-self">
						<div class="panel-title-self">账号信息</div>
					</div>
				</caption>
				<tbody>
					<tr>
						<td>
							<fieldset class="fieldset-self">
								<legend>角色信息</legend>
								<table width="100%">
									<tr>
										<td align="right">账号：</td>
										<td>
										<s:if test="admin.id != null && admin.id != ''">
												<s:textfield name="admin.allowControlAllUser"
													readonly="true" />
											</s:if> <s:else>
												<s:textfield name="admin.allowControlAllUser" />
											</s:else></td>
										<td align="right">姓名：</td>
										<td>
										<s:textfield name="admin.name" /></td>
										<td align="right">性别：</td>
										<td>
										<s:select name="admin.sex" list="#{'男':'男', '女':'女'}"></s:select></td>
									</tr>
									<tr>
										<td align="right">手机：</td>
										<td>
										<s:textfield name="admin.mob" /></td>
										<td align="right">Email：</td>
										<td>
										<s:textfield name="admin.email" /></td>
										<td align="right">备注：</td>
										<td colspan="3">
										<s:textfield name="admin.zw" size="60" /></td>
									</tr>
								</table>
							</fieldset>
						</td>
					</tr>
					<tr>
						<td>
							<fieldset class="fieldset-self">
								<legend>角色权限</legend>
								<table width="100%">
									<tbody>
										<s:iterator value="roleList" status="status">
											<s:if test="#status.first">
												<tr>
											</s:if>
													<td width="16.66%" align="left">
														<div title="${roleList[status.index].role}" class="easyui-tooltip">
															<s:set name="flag" value="false" />
															<s:iterator value="admin.roleList" status="status2">
																<s:if test="%{id == roleList[#status.index].id}">
																	<s:set name="flag" value="%{#flag || true}" />
																</s:if>
															</s:iterator>
															<s:if test="%{#flag}">
																<input class="checkbox" type="checkbox" name="admin.roleList[${status.index}].id" value="${roleList[status.index].id}" id="roleList_${status.index}" checked="checked" />
																<label class="label" for="roleList_${status.index}"><span></span>${roleList[status.index].name}</label>
															</s:if> 
															<s:else>
																<input class="checkbox" type="checkbox" name="admin.roleList[${status.index}].id" value="${roleList[status.index].id}" id="roleList_${status.index}" />
																<label class="label" for="roleList_${status.index}"><span></span>${roleList[status.index].name}</label>
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
					<tr>
						<td>
							<fieldset class="fieldset-self">
								<legend>店铺权限</legend>
								<table width="100%">
									<tbody>
										<s:iterator value="shopList" status="status">
											<s:if test="#status.first">
												<tr>
											</s:if>
											<td width="16.66%" align="left">
												<div title="${shopList[status.index].tsAssetTxm}" class="easyui-tooltip">
													<s:if
														test="%{admin.dataPermShop.contains(shopList[#status.index].tsAssetId)}">
														<input class="checkbox" type="checkbox" name="adminDataPermShopList"
															value="${shopList[status.index].tsAssetId}"
															id="shopList_${status.index}" checked="checked" />
														<label class="label" for="shopList_${status.index}"><span></span>${shopList[status.index].tsAssetName}</label>
													</s:if> <s:else>
														<input class="checkbox" type="checkbox" name="adminDataPermShopList"
															value="${shopList[status.index].tsAssetId}"
															id="shopList_${status.index}" />
														<label class="label" for="shopList_${status.index}"><span></span>${shopList[status.index].tsAssetName}</label>
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
					<tr>
						<td>
							<fieldset class="fieldset-self">
								<legend>省份权限</legend>
								<table width="100%">
									<tbody>
										<s:iterator value="provinceList" status="status">
											<s:if test="#status.first">
												<tr>
											</s:if>
											<td width="16.66%" align="left">
												<div title="${provinceList[status.index].tsBm}" class="easyui-tooltip">
													<s:if test="%{admin.dataPermProvince.contains(provinceList[#status.index].tsBm)}">
														<input class="checkbox" type="checkbox" name="admin.dataPermProvinceObj[${status.index}].cid" value="${provinceList[status.index].cid}" id="provinceList_${status.index}" checked="checked" />
														<label class="label" for="provinceList_${status.index}"><span></span>${provinceList[status.index].cname}</label>
													</s:if> <s:else>
														<input class="checkbox" type="checkbox" name="admin.dataPermProvinceObj[${status.index}].cid" value="${provinceList[status.index].cid}" id="provinceList_${status.index}" />
														<label class="label" for="provinceList_${status.index}"><span></span>${provinceList[status.index].cname}</label>
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
					<tr align="center">
						<td><s:hidden name="admin.id" />
							<button type="submit">
								<img src="images/apply2.png" alt="保存数据" /> 保存数据
							</button> &#160;&#160;&#160;
							<button type="button" onclick="return history.back();">
						<img src="images/cross.png" alt="返回" /> 返回
				</button></td>
					</tr>
				</tbody>
			</table>
		</s:form>
	</div>
</body>
</html>
