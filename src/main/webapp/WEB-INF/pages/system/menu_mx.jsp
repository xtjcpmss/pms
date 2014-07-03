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
		$('#dlg').dialog({
		    onClose:function(){
		    	flag = false;
		    }
		});
		openCheck();
		var tsMkIdsAdd1 = new Array();//选择新增加的角色id
		var tsMkIdsOrg1 = $("#idsOrg").val();//删除原本就有的角色id
		if (tsMkIdsOrg1 != null && !tsMkIdsOrg1 == "") {
			tsMkIdsAdd = tsMkIdsOrg1.split(",");
		}
		var tsMkIdsDelete1 = new Array();
		tsMkIdsOrg = tsMkIdsAdd1;
		tsMkIdsDelete = tsMkIdsDelete1;
		$('#zjzyT').css('display', 'none');
		//alert($("#flag").val());
		if ($("#flag").val() == "mx") {//表示 是明细查询
			//$('#zjzyT').css('display', 'none');
			$('#repickButton').css('display', 'none');
			$('#saveButton').css('display', 'none');
		}
	});

	var tsMkIdsAdd = new Array();//选择新增加的角色id
	var tsMkIdsDelete = new Array();//删除原本就有的角色id
	var tsMkIdsOrg = new Array();

	var zyIdsDelete = new Array();//删除的资源id
	var zyIdsAdd = new Array();//新加的资源id

	var all = document.getElementsByTagName("*");
	//保存
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

	//增加资源
	var addAccessFlag = true;
	function forAddAccess() {
		if (addAccessFlag) {
			$('#zjzyT').css('display', 'block');
			addAccessFlag = false;
		} else {
			$('#zjzyT').css('display', 'none');
			addAccessFlag = true;
		}
	}

	//增加资源
	function forAddZY() {
		var accessPermissionsName = $("#accessPermissionsName").val();//资源名称
		var accessPermissionsRemark = $("#accessPermissionsRemark").val();//资源url
		var accessPermissionsUrl = $("#accessPermissionsUrl").val();//资源备注
		var accessPermissions = accessPermissionsName + "!#!"
				+ accessPermissionsRemark + "!#!" + accessPermissionsUrl;
		if (accessPermissionsName == "" || accessPermissionsRemark == ""
				|| accessPermissionsUrl == "") {
			$.messager.alert('提示', "请把资源信息写全！", 'warning');
			return false;
		}
		var tr = all.test1.insertRow();
		var td1 = tr.insertCell(0);
		td1.innerHTML = accessPermissionsName;
		td1.style.textAlign = "center";

		var td2 = tr.insertCell(1);
		td2.innerHTML = accessPermissionsRemark;
		td2.style.textAlign = "center";

		var td3 = tr.insertCell(2);
		td3.innerHTML = accessPermissionsUrl;
		td3.style.textAlign = "center";

		var td4 = tr.insertCell(3);
		td4.innerHTML = "<a href=\"##\" onclick=\"forDeleteZY(this,'"
				+ accessPermissions + "','1')\"> 删除 </a>";
		td4.style.textAlign = "center";
		//hashMap.Set(accessPermissions, "1");
		//alert(accessPermissions);
		zyIdsAdd.push(accessPermissions);
		//alert(zyIdsAdd);
	}

	//删除资源
	function forDeleteZY(s1, s2, s3) {
		var xinxiConfrim = "确定删除该资源吗？";
		$.messager.confirm('新增菜单提示', xinxiConfrim, function(r) {
			if (r) {
				if (s3 == "1") {//表示删除 新添加的资源
					for ( var i = 0; i < zyIdsAdd.length; i++) {
						if (s2 == zyIdsAdd[i]) {
							zyIdsAdd[i] = "";
							$(s1).parent().parent().remove();
						}
					}
				} else {//表示 删除 本来就有的 资源
					$.messager.confirm('新增菜单提示', "此操作不可恢复，" + xinxiConfrim,
							function(r) {
								if (r) {
									zyIdsDelete.push(s2);
									$(s1).parent().parent().remove();
								}
							});
				}
			}
		});
	}

	var flag = true;
	function openCheck() {
		if (flag) {
			flag = false;
			$('#dlg').dialog('close');
		} else {
			flag = true;
			forQuery();
			$('#dlg').dialog('open');
		}
	}

	function forQuery() {
		var roleName = $("#roleName").val();
		$('#tt1').datagrid(
				{
					iconCls : 'icon-save',
					width : 700,
					height : 325,
					url : 'system!queryRoleList.html?role.name='
							+ encodeURI(roleName, "UTF-8") + "&" + new Date(),
					pagination : true
				});
		var p = $('#tt1').datagrid('getPager');
		$(p).pagination({
			pageSize : 10
		//每页显示的记录条数，默认为10  
		});
	}

	function forConfirm() {
		var rows = $('#tt1').datagrid('getSelections');
		//获取datagrid选中行
		if (rows.length < 1) {
			$.messager.alert('提示', '请选择一条记录!', 'warning');
			return false;
		}
		for ( var i = 0; i < rows.length; i++) {
			var addFlag = true;
			//添加的时候  加个判断  判断该元素是否在 原数组中 
			if (arrayFindString(tsMkIdsOrg, rows[i].id) < 0) {//判断该元素是否在原数组中 
				//没有在原数组中  看是否已经添加过
				if (arrayFindString(tsMkIdsAdd, rows[i].id) < 0) {
					addFlag = true;//没有添加过  增加行
					tsMkIdsAdd.push(rows[i].id);
				} else {
					addFlag = false;//已经添加 ,不增加行
					$.messager.alert('提示', "角色名称：" + rows[i].name
							+ "，已经存在，请重新选择！", 'warning');
				}
			} else {//在 原数组 中 
				//如果在  那么看该元素 是否 在 tsMkIdsDelete 中 如果在，那么表示  该元素 已经删除    可以添加 
				if (arrayFindString(tsMkIdsDelete, rows[i].id) < 0) {
					addFlag = false;//没有 删除 过，不增加行
					//alert("号池名称：" + rows[i].tsMkTitle + "，已经存在，请重新选择！");
					$.messager.alert('提示', "角色名称：" + rows[i].name
							+ "，已经存在，请重新选择！", 'warning');
				} else {
					addFlag = true;//增加行 同时在 tsMkIdsDelete 删除 元素 
					arrayDeleteString(tsMkIdsDelete, rows[i].id);
				}
			}
			if (addFlag) {
				addE(rows[i].id, rows[i].name, rows[i].role);
			}

		}
		$("#tt1").datagrid("unselectAll");
		//$.messager.alert('提示', '已经加入到选择的列表里了！', 'warning');
		openCheck();
	}

	function forDelete(s, s2) {
		$.messager.confirm('删除角色提示', "确定删除吗？", function(r) {
			if (r) {
				if (arrayFindString(tsMkIdsOrg, s2) < 0) {//判断该元素是否在原数组中  
					//没有在原数组中   那就是新添加的 行
					arrayDeleteString(tsMkIdsAdd, s2);//删除数据
				} else {
					//在原数组中 
					tsMkIdsDelete.push(s2);
				}
				$(s).parent().parent().remove();
			}
		});
	}
	// 查找数组包含的字符串
	function arrayFindString(arr, string) {
		var str = arr.join("");
		return str.indexOf(string);
	}

	//删除元素
	function arrayDeleteString(arr, string) {
		arr.splice(arrayFindString(arr, string) / string.length,
				arrayFindString(arr, string) / string.length + 1);
	}

	var i = 0;
	var j = 0;
	function addE(s1, s2, s3) {
		i++;
		var tr = all.test2.insertRow();

		var td1 = tr.insertCell(0);
		td1.innerHTML = s1;
		td1.style.textAlign = "center";

		var td2 = tr.insertCell(1);
		td2.innerHTML = s2;
		td2.style.textAlign = "center";

		var td3 = tr.insertCell(2);
		td3.innerHTML = s3;
		td3.style.textAlign = "center";

		var td4 = tr.insertCell(3);
		td4.innerHTML = "<a href=\"##\" onclick=\"forDelete(this,'" + s1
				+ "')\"> 删除 </a>";
		td4.style.textAlign = "center";
	}

	//校验
	function forCheck() {
		if ($("#menuName").val() == "") {
			$.messager.alert('提示', "菜单名称不能为空！", 'warning');
			return false;
		}
		if ($("#menuRemark").val() == "") {
			$.messager.alert('提示', "菜单等级不能为空！", 'warning');
			return false;
		}
		if ($("#menuUrl").val() == "") {
			$.messager.alert('提示', "菜单资源不能为空！<br> 如果是空资源，请输入#", 'warning');
			return false;
		}
		if ($("#menuSort").val() == "") {
			$.messager.alert('提示', "菜单排序不能为空！", 'warning');
			return false;
		}
		return true;
	}
	//保存 
	function forSave() {
		if (!forCheck()) {
			return false;
		}
		$("#zyIdsAdd").val(zyIdsAdd);
		$("#zyIdsDelete").val(zyIdsDelete);
		document.forms[0].action = "system!saveMenu.html?idsAdd=" + tsMkIdsAdd;
		if ("menuListEdit" == $("#flag").val()) {
			document.forms[0].target = "_self";
		} else {
			document.forms[0].target = "_parent";
		}
		document.forms[0].submit();
	}

</script>
<style type="text/css">
body {
	margin: auto;
	margin-top: 0;
	margin-left: 0;
}

#side {
	border: 1px solid #95B8E7;
	background: #E8F1FF;
	height: 300px;
	width: 160px;
	float: left;
}

#main {
	border: 1px solid #6AABCB;
	background: #FFFDFE;
	height: 500px;
	width: 100%;
}

.xzcd {
	font-size: 12px;
	background: #E8F1FF;
	border: 1px solid #95B8E7;
	height: 25px;
	line-height: 25px;
}

.srk {
	background-color: #F6F6F6;
	height: 80px;
	border: 1px #E8F1FF;
	border-bottom-style: dashed;
}

.box {
	margin: auto;
	margin-top: 12px;
	margin-left: 40%;
}

.shur {
	margin-left: 5px;
	margin-top: 5px;
	float: left;
}

.font1 {
	margin-left: 40px;
	font-size: 12px;
	color: #000;
	width: 80px;
	float: left;
}

.font2 {
	margin-left: 40px;
	font-size: 12px;
	color: #000;
	width: 80px;
}

.font3 {
	margin-top: 5px;
	margin-left: 125px;
	font-size: 12px;
	color: #258FC2;
	width: 80px;
	float: left
}
</style>
</head>
<body>
	<s:form id="form" action="system!roleUpdate" method="POST">
		<table width="100%" style="height: 550px">
			<tr>
				<td valign="top">
					<div id="main">
						<div class="xzcd">&nbsp;新增菜单</div>
						<div class="srk">
							<table align="center">
								<tr>
									<td align="right"><b>菜单名称：</b></td>
									<td><s:textfield name="menu.name" id="menuName" /></td>
									<td align="right"><b>菜单等级：</b></td>
									<td><s:textfield name="menu.remark" id="menuRemark" /></td>
									<td align="right"><b>菜单排序：</b></td>
									<td><input name="menu.sort" id="menuSort"
										value="${menu.sort}" class="easyui-numberspinner" /></td>
									<td align="right"><b>图标：</b></td>
									<td><s:textfield name="menu.icon" id="icon" /></td>
								</tr>
								<tr>
									<td align="right"><b>菜单资源：</b></td>
									<td colspan="8"><s:textfield size="125" name="menu.url" id="menuUrl" /></td>
									
								</tr>
							</table>
						</div>
						<div class="xzcd">
							<table width=100%>
								<tr>
									<td align="left">菜单权限资源</td>
									<td align="right"><s:if test="flag!=\"mx\" && flag!=null">
											<a href="#" onclick="forAddAccess()" id="xzzy">新增资源</a>
										</s:if></td>
								</tr>
							</table>
						</div>

						<table align="center" cellpadding="10px" id="zjzyT"
							style="border-width: 0px 0px 0px 0px; border-spacing: 0; border-color: #C1DAD7;">
							<tr>
								<td align="right"><b>资源名称：</b></td>
								<td><s:textfield name="name" id="accessPermissionsName" /></td>
								<td align="right"><b>资源备注：</b></td>
								<td><s:textfield name="remark" id="accessPermissionsRemark" /></td>
								<td align="right"><b>资源url：</b></td>
								<td><s:textfield name="url" id="accessPermissionsUrl" /></td>
								<td><button type="button" onclick="forAddZY()">增加资源</button></td>
							</tr>
						</table>
						<fieldset class="srk" style="overflow: auto; height: 160px;">


							<table id="stupidtable1" width="100%" align="center"
								class="table">
								<thead>
									<tr>
										<th data-sort="String">资源名称</th>
										<th data-sort="String">资源备注</th>
										<th data-sort="String">资源url</th>
										<s:if test="flag!=\"mx\" && flag!=null ">
											<th>操作</th>
										</s:if>
									</tr>
								</thead>
								<tbody id="test1">
									<s:iterator value="accessPermissionsList"
										id="accessPermissions" status="status">
										<tr onmouseover="this.bgColor='#EAF2FF'"
											onmouseout="this.bgColor='#FFFFFF'" align="center"
											id="goodsList_${status.index}">
											<td align="center"><s:property value="name" /></td>
											<td align="center"><s:property value="remark" /></td>
											<td align="center"><s:property value="url" /></td>
											<s:if test="flag!=\"mx\" && flag!=null">
												<td align="center"><s:a href="##"
														onclick="forDeleteZY(this,'%{name}!#!%{remark}!#!%{url}','%{id}')">删除
															</s:a></td>
											</s:if>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</fieldset>
						<div class="xzcd">
							<table width=100%>
								<tr>
									<td align="left">菜单角色</td>
									<td align="right"><s:if test="flag!=\"mx\" && flag!=null">
											<a href="#" onclick="openCheck()" id="xzjs">新增角色</a>
										</s:if></td>
								</tr>
							</table>
						</div>

						<fieldset class="srk" style="overflow: auto; height: 140px;">
							<table id="stupidtable1" width="100%" align="center"
								class="table">
								<thead>
									<tr>
										<th data-sort="String">id</th>
										<th data-sort="String">角色名称</th>
										<th data-sort="String">真实角色</th>
										<s:if test="flag!=\"mx\" && flag!=null">
											<th>操作</th>
										</s:if>
									</tr>
								</thead>
								<tbody id="test2">
									<s:iterator value="roleList" id="role" status="status">
										<tr onmouseover="this.bgColor='#EAF2FF'"
											onmouseout="this.bgColor='#FFFFFF'" align="center"
											id="goodsList_${status.index}">
											<td align="center"><s:property value="id" /></td>
											<td align="center"><s:property value="name" /></td>
											<td align="center"><s:property value="role" /></td>
											<s:if test="flag!=\"mx\" && flag!=null">
												<td align="center"><s:a href="##"
														onclick="forDelete(this,'%{id}')">删除
															</s:a></td>
											</s:if>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</fieldset>
						<div class="box">
							<s:if test="flag!=\"mx\" && flag!=null">
								<button type="button" onclick="return forSave();">
									<img src="images/apply2.png" alt="保存数据" /> 保存数据
								</button>
							</s:if>
							&#160;&#160;&#160;
							<button type="button" onclick="return history.back();">
						<img src="images/cross.png" alt="返回" /> 返回
				</button>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<s:hidden id="flag" name="flag" />
		<s:hidden id="idsOrg" name="idsOrg" value="%{idsOrg}" />
		<s:hidden id="menuId" name="menu.id" />
		<s:hidden id="zyIdsAdd" name="zyIdsAdd"></s:hidden>
		<s:hidden id="zyIdsDelete" name="zyIdsDelete" />
	</s:form>
	<!--  -->
	<fieldset id="dlg" class="easyui-dialog" title="角色列表"
		data-options="iconCls:'icon-save',buttons: '#dlg-buttons',resizable:true,modal:true"
		style="width: 760px; height: 370px; padding: 5px; position: relative; top: 5px;">
		<table>
			<tr>
				<td>
					<table align="center" style="width: 420px;">
						<tr align="center">
							<td style="padding-right: 50px;">角色名称： <s:textfield
									id="roleName" name="role.name" />
							</td>
							<td style="padding-left: 5px;"><input type="button"
								value="查询" onclick="forQuery()"></input></td>
							<td style="padding-left: 5px;"><button type="button"
									onclick="forConfirm()">确定</button></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="tt1" align="left" style="width: 420px; height: 260"
						data-options="  
               rownumbers:true,singleSelect:false,  
                autoRowHeight:false,pageSize:10,idField:'id'">
						<thead>
							<tr>
								<th data-options="field:'ck',checkbox:true"></th>
								<th field="id" width="180" align="left">角色ID</th>
								<th field="name" width="120" align="left">角色名字</th>
								<th field="role" width="100" align="center">真实角色</th>
							</tr>
						</thead>
					</table>
				</td>
			</tr>
		</table>
	</fieldset>
</body>
</html>
