<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script type="text/JavaScript">
//main页面全屏
if (window.name == 'passport')
	window.parent.location.href = document.location.href;
</script>

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
<link rel="stylesheet" href="${basePath}/js/jquery/jquery-mCustomScrollbar/jquery.mCustomScrollbar.css" type="text/css" />
<script type="text/javascript" src="${basePath}/js/main/jquery.rotate.js">//</script>
<script type="text/javascript" src="${basePath}/js/main/jquery.mousewheel.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-mCustomScrollbar/jquery.mCustomScrollbar.js">//</script>
<script type="text/javascript" src="${basePath}/js/jquery/jquery-mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js">//</script>

<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

body,html,div,p,span,ul,ol,li,h1,h2,h3,em,i,b,table,tr,td {
	margin: 0;
	padding: 0;
	font-size: 12px;
}

body,html {
	height: 100%;
	width: 100%;
	overflow: hidden;
}

img {
	border: none;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

.top {
	background: url(${basePath}/images/main/t.gif) repeat-x;
	height: 80px;
	border-bottom: 1px solid #2c84ce;
}

.top .tbg {
	background: url(${basePath}/images/main/tbg.gif) top right no-repeat;
	width: 100%;
	height: 80px;
}

.top .logo,.topBox .logo {
	background: url(${basePath}/images/main/logo.gif) no-repeat;
	width: 406px;
	height: 80px;
	float: left;
	margin: 20px 0 0 28px;
}

.top .msg {
	float: right;
	padding: 54px 20px 0 0;
}

.top .msg a {
	color: #FFF;
	text-decoration: none;
	margin-left: 10px;
}

.main {
	width: 100%;
	height: 100%;
	position: relative;
}

.main td {
	height: 100%;
}

.main #menu {
	width: 178px;
	background: #3f4c6b;
	position: relative;
}

.main .iframe {
	background: #FFFFFF;
	border-top: #e9f0f9;
}

.footer {
	background: #f87d05;
	border-top: 1px solid #35ace7;
	height: 19px;
	clear: both;
	color: #6992af;
	bottom: 0;
	left: 0;
	width: 100%;
	z-index: 999;
}

.footer div {
	background: #f87d05;
	border-top: 1px solid #35ace7;
	height: 20px;
	clear: both;
	color: #6992af;
	line-height: 20px;
	text-align: center;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	z-index: 999;
}


#nav-list {
	padding-top: 20px;
	/* position: absolute; */
	top: 0;
	left: 0;
	z-index: 998;
}

#nav-list li {
	clear: both;
}

#nav-list li .navB {
	text-decoration: none;
	display: block;
	height: 32px;
	width: 178px;
	position: relative;
	padding-top: 6px;
	cursor: pointer;
}

#nav-list li .navB:hover {
	background: #f87d05;
}

#nav-list li .navBon,#nav-list li .navBon:hover {
	background: #f87d05 no-repeat;
}

#nav-list li .navBson,#nav-list li .navBson:hover {
	background: #f87d05;
}


#nav-list li em {
	width: 20px;
	height: 24px;
	margin: 0 9px 0 12px;
	display: inline-block;
	float: left;
}

.submenu {
	display: none;
}

.submenu a,.submenu span {
	background: url(${basePath}/images/main/line.gif) 15px center #3f4c6b
		no-repeat;
	height: 26px;
	line-height: 26px;
	padding-left: 40px;
	display: block;
	color: #FFF;
	cursor: pointer;
	z-index: 9999;
}

.submenu a:hover {
	background: url(${basePath}/images/main/line.gif) 15px center #E69649
		no-repeat;
}

.submenu .son {
	background: url(${basePath}/images/main/line.gif) 15px center #E69649 
		no-repeat;
}

.submenu a {
	width: 138px;
}

.submenu li {
	position: relative;
}

.submenu li ul {
	display: none;
	z-index: 99999;
}

.submenu li ul a {
	background: url(${basePath}/images/main/line2.gif) 15px center #3f4c6b
		no-repeat;
	padding-left: 40px;
	display: block;
	width: 126px;
	padding-right: 12px;
}

.submenu li ul a:hover {
	background: url(${basePath}/images/main/line2.gif) 15px center #E69649
		no-repeat;
}

.submenu li:hover {
	background: #E69649;
}

.submenu li:hover ul {
	display: none;
}

.submenu li.iehover ul {
	display: block;
}

.nav li .navB span {
	line-height: 24px;
	color: #FFF;
	float: left;
}

.nav li .navB b {
	float: right;
	margin: 7px 25px 0 0;
	width: 10px;
	height: 10px;
	display: block;
	background: url(${basePath}/images/main/arr.png) no-repeat;
}
/* 
.snav li .navB span {
	display: none;
	position: absolute;
	top: 0;
	left: 48px;
	line-height: 36px;
	color: #FFF;
	background: #f87d05;
	height: 38px;
	width: 155px;
	text-align: center;
}

.snav li .navB b {
	display: none;
}

.snav li {
	position: relative;
}

.snav .submenu {
	position: absolute;
	top: 38px;
	left: 53px;
	display: hide;
	width: 150px;
}

.snav .submenu li ul {
	left: 150px;
}

.snav .submenu a {
	width: 110px;
}
 */
#nav {
	height: 500px;
}


.topBox {
	background: url(${basePath}/images/main/t.gif) repeat-x;
	height: 80px;
	width: 600px;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 999;
}

.submenu a b.rightarrow{
	float: right;
	margin: 10px 25px 0 0;
	width: 10px;
	height: 10px;
	display: block;
	background: url(${basePath}/images/main/arr.png) no-repeat;
	-webkit-transform: rotate(0deg);
	-moz-transform:rotate(0deg);
	-ms-transform:rotate(0deg);
	transform:rotate(0deg);
}
.submenu a b.downarrow{
	float: right;
	margin: 10px 25px 0 0;
	width: 10px;
	height: 10px;
	display: block;
	background: url(${basePath}/images/main/arr.png) no-repeat;
	-webkit-transform: rotate(90deg);
	-moz-transform:rotate(90deg);
	-ms-transform:rotate(90deg);
	transform:rotate(90deg);
}

.msg div{  
    float:right; 
}  

*+html  #menu ul{
	position:relative;
	zoom:1;
}

#tinybox{position:absolute; display:none; padding:10px; background:#ffffff url(../image/preload.gif) no-repeat 50% 50%; border:10px solid #e3e3e3; z-index:2000;}
#tinymask{position:absolute; display:none; top:0; left:0; height:100%; width:100%; background:#000000; z-index:1500;}
#tinycontent{background:#ffffff; font-size:1.1em;}


</style>
<script type="text/JavaScript">
$(document).ready(
		function() {
			ini();
			
			//二级导航
			$(".submenu").children("li").children("a").click(
					function() {
						//alert($(this).parent().parent().parent().html())
						$(".navB").removeClass("navBson").removeClass(
								"navBon");
						$(this).parent().parent().parent().children("a")
								.addClass("navBon");

						$(".submenu").children("li").each(function() {
							$(this).children("a").removeClass();
						});
						$(this).addClass("snavBon");
						
						//新增部分--
						$(this).parent().siblings('li').children('ul').slideUp('normal',function(){
							
						});
						$(".content").mCustomScrollbar("update");
						$(this).parent().siblings('li').children('a').children('b').removeClass();
						$(this).parent().siblings('li').children('a').children('b').addClass('rightarrow');
						$(this).children('b').toggleClass('downarrow');
						if($(this).children('b').hasClass('downarrow')){
							$(this).next('ul').slideDown('normal',function(){
								$(".content").mCustomScrollbar("update");
							});
						}else{
							$(this).next('ul').slideUp('normal',function(){
								$(".content").mCustomScrollbar("update");
							});
					
						}
						//新增部分--end
					});
			//三级菜单
			$(".submenu li ul").children("li").children("a").hover(
					function() {
						$(this).parent().parent().parent().children("a")
								.addClass("son");
					},
					function() {
						$(this).parent().parent().parent().children("a")
								.removeClass("son");
					});

			//滚动条设置
			moveable = false;
			i = 0;
		});

function iniNav() {
	$(".navB").each(function(index) {
		$(this).removeClass("navBon");
		$(this).removeClass("navBson");
		$(this).children("b").css("transform", "rotate(0deg)");
		$(this).parent().children("ul").slideUp('normal',function(){
			 $(".content").mCustomScrollbar("update"); 
		});
		$(this).parent().children("ul").children("li ul").hide();
		$(this).children("span").show();
	});
	$(".iframe").unbind("mouseenter").unbind("mouseleave");
	$("#nav-list .navB").unbind("mouseenter").unbind("mouseleave");
}
function iniNavT() {
	$(".navB").each(function(index) {
		$(this).removeClass("navBon");
		$(this).removeClass("navBson");
		$(this).children("b").css("transform", "rotate(0deg)");
		$(this).parent().children("ul").hide();
		$(this).parent().children("ul").children("li ul").hide();
		$(this).children("span").show();
	});
	$(".iframe").unbind("mouseenter").unbind("mouseleave");
	$("#nav-list .navB").unbind("mouseenter").unbind("mouseleave");

}

$(window).resize(ini);
function iniNavB() {
	$(".navB").unbind("click");
	$(".navB").each(
			function(index) {
				$(this).click(
						function() {
							//点击一级菜单收起所有的多级菜单
							$('.nav ul').slideUp('normal',function(){
							});
							$('.submenu b').removeClass('downarrow');
							$(this).children("b").css("transform","rotate(0deg)");
							//end
							
							//如果有下级导航
							$(".navB").each(function(j) {
								if (j != index) {
									navClick[j] = 0;
								}
							});
							iniNav(index);
							var ul = $(this).parent().children("ul");
							if (ul.length) {
								if (navClick[index]) {
									$(this).children("b").css("transform",
											"rotate(0deg)");
									ul.slideUp('normal',function(){
									});
									
									navClick[index] = 0;
								} else {
									$(this).children("b").css("transform",
											"rotate(90deg)");
									ul.slideDown("normal", function() {
										var h0 = $("#nav-list").height();
										$(".content").mCustomScrollbar("update");
									});
									navClick[index] = 1;
								}
								$(this).toggleClass("navBson");
							} else {
								$(this).toggleClass("navBon");
							}
						});
				
			});

}

var MainH = $(window).height();
var navClick = [];

function ini() {
	var h = $(window).height() - $(".top").height() - $(".footer").height();
	/* $("#menu_scroll").css("height", h); */
	MainH = h;
	navClick = [];
	$("#nav-list .navB").each(function(i) {
		navClick.push(0);
	});
	iniNavB();
};
	
	$(document).ready(function() {
		 $(window).load(function(){
		        $(".content").mCustomScrollbar({
		            scrollInertia:0,
		            mouseWheel:true,
		            scrollButtons:{
		                enable:false
		            },
		            callbacks: {
		                onTotalScroll: function(){
		                }
		            }
		        });
		    });
	});

	// 修改密码
	function updateCd() {
		window.open("http://passport.189.cn/SelfS/Home/Account/PassSetPhone.aspx");
		// alert("请在PassPort修改密码！");
		// window.parent.iframe_center.location.href = 'password.html';
	}
	// 退出登录
	function loginOut() {
		if (confirm('确定退出系统？')) {
			// window.parent.location.href = 'logout.html';
			window.parent.location.href = '${logoutURL}';
		}
	}
	
	// 点击菜单
	function menuOnClick(id, name, url) {
		// 修改标题名称
		// $("#center").panel('setTitle', name);
		
		// 添加 tabs
		if ($('#tt').tabs('exists', name)) {
			// 选中
			$('#tt').tabs('select', name);
			// 更新
			var tab = $('#tt').tabs('getSelected'); 
			$('#tt').tabs('update', {
				tab: tab,
				options: {
					title : name,
					// iconCls : 'icon-home',
					content : '<iframe  style="background-color:rgb(253,253,254)" frameborder="0" width="100%" height="100%" src="'+ url +'" scrolling="auto"></iframe>',
					closable : true,
					loadingMessage : '加载中...'
				}
			});
		} else {
			$('#tt').tabs('add', {
				title : name,
				// iconCls : 'icon-home',
				content : '<iframe  style="background-color:rgb(253,253,254)" frameborder="0" width="100%" height="100%" src="'+ url +'" scrolling="auto"></iframe>',
				closable : true,
				loadingMessage : '加载中...'
			});
		}
		
		return false;
	}
	
	// 关闭按钮
	function removePanel() {
		/* var tab = $('#tt').tabs('getSelected');
		// alert('Selected: '+tab.panel('options').title);
		if (tab.panel('options').title != '首页')
			$('#tt').tabs('close', tab.panel('options').title); */
		
		var tabs = $("#tt").tabs("tabs");
		var length = tabs.length;
		for (var i = 1; i < length; i++) {
			var onetab = tabs[1];
			var title = onetab.panel('options').title;
			$("#tt").tabs("close", title);
		}
	}

</script>
</head>
<body>
<div class="easyui-layout" style="width: 100%; height: 100%;">
		<div data-options="region:'north',split:false,border:false" style="height: 72px;overflow-y:hidden;">
			<div class="Top" style="background:url('${basePath}/images/main/bg-top.gif')">
    			<div class='logo-full'>
        			<img src="${basePath}/images/main/top.gif"/>
    			</div>
    			<div class="msg" style='position: absolute;top: 0;right: 20px;z-index:2;'>
        			<div style="background:url(${basePath}/images/main/quit.jpg) no-repeat ;display:inline-block;width:83px;height:30px;color:#FFF;margin-left:10px;">
            			<span style="padding-left: 35px; line-height: 30px; cursor: pointer; color: #BCBFC9;margin-top: 3px;display: inline-block" onclick="loginOut();">退出</span>
        			</div>
    				<div style="background:url(${basePath}/images/main/password.jpg) no-repeat;display:inline-block;width:83px;height:30px;color:#FFF;margin-left:10px;">
            			<span style="padding-left: 35px; line-height: 30px; cursor: pointer; color: #BCBFC9;margin-top: 3px;display: inline-block" onclick="updateCd();">修改密码</span>
        			</div>
        			<div style="background:url(${basePath}/images/main/user.jpg) no-repeat;display:inline-block;width:auto;height:30px;color:#FFF;margin-top:1px;">
            			<span style="padding-left: 35px; line-height: 30px; color: #BCBFC9;margin-top: 3px;display: inline-block"><s:property value="user.name" />（<s:property value="user.allowControlAllUser" />）</span>
        			</div>
    			</div>
			</div>
		</div>
		<div id="west" class="content" title="&#160;&#160;&#160;&#160;&#160;导航菜单" data-options="region:'west',split:false, border:false,plain:true" style="width: 168px;background-color:#3f4c6b;position:relative;zoom:1; overflow:hidden;">
			<div id="menu" valign="top" width="178">
				<ul class="nav" id="nav-list" >
					<!-- 第一级目录 -->
					<s:iterator value="user.rootMenuList" status="status">
						<!-- 是否显示 -->
						<s:if test="show == 1">
							<li>
								<a href="<s:property value='url != null && url != "#" ? url : "javascript:void(0)"' />" class="navB"> <em> <s:if test='icon != null && icon != ""'><img src="${basePath}/images/main/<s:property value="icon" />" /></s:if></em> <span><strong><s:property value="name" /></strong></span><b></b></a>
								<s:if test="userChildList.size > 0">
									<ul class="submenu">
										<s:iterator value="userChildList" id="childList2" status="status2">
											<li>
												<s:if test="#childList2.userChildList.size > 0">
													<a href="javascript:void(0)">
													<b class="rightarrow"></b><span style="padding-left: 0px; background: none;"><strong><s:property value="name" /></strong></span></a>
													<ul>
														<!-- 三级菜单 -->
														<s:iterator value="#childList2.userChildList" id="childList3" status="status3">
															<li>
																<a href="<s:property value="url"/>" target="iframe_center" onclick="return menuOnClick('${id}', '${name}', '${url}');"><span style="background:none;padding-left:10px;"><s:property value="name" /></span></a><!-- 修改部分 end-->
															</li>
														</s:iterator>
													</ul>
												</s:if>
												<s:else>
													<a href="<s:property value='url != null && url != "#" ? url : "javascript:void(0)"' />" target="iframe_center" onclick="return menuOnClick('${id}', '${name}', '${url}');">
													<strong><s:property value="name" /></strong></a>
												</s:else>
											</li>
										</s:iterator>
									</ul>
								</s:if>
							</li>
						</s:if>
					</s:iterator>
				</ul>
			</div>	
		</div>
		<div id="center" region="center" border="false">
			<div id="tab-tools" style="padding-right: 10px">
		        <a href="javascript:void(0)" title="关闭全部标签页" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick="removePanel()">全部关闭</a>
		    </div>
			<div id="tt" class="easyui-tabs" fit="true" border="false" tools="#tab-tools">
				<div title="首页" data-options="iconCls:'icon-home'">
					<iframe frameborder="0" id="iframe_center" name="iframe_center" width="100%" height="100%" src="main!home.html" scrolling="auto"></iframe>
				</div>
			</div>
		</div>
	</div>
</body>
</html>