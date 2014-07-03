/**
 * common.js 1.0
 *  V 1.0 (最终版本)
 * 2014/2/26 (最终更新日期)
 *
 * Copyright © 2014 中国电信股份有限公司增值业务运营中心 版权所有
 *
 * 所有文字、代码资料，版权均属中国电信股份有限公司增值业务运营中心
 * 所有，任何公司或个人未经本司协议授权，不得复制、下载、存储或公开
 * 显示。违者本公司将依法追究责任。(Copyright notice)
 */
// 2014年2月26日
// 弹出框
var Nav={
	OP: !!window.opera,														//Opera
	IE: navigator.userAgent.toLowerCase().indexOf("msie")>=0,				//Internet Explorer
	IE7: navigator.appVersion.toLowerCase().indexOf("msie 7")>=0,			//Internet Explorer 7
	IE8: navigator.appVersion.toLowerCase().indexOf("msie 8")>=0,			//Internet Explorer 8
	IE9: navigator.appVersion.toLowerCase().indexOf("msie 9")>=0,			//Internet Explorer 9
	MF: navigator.userAgent.toLowerCase().indexOf("firefox")>=0,			//Mozilla FireFox & Netscape
	SA: navigator.userAgent.toLowerCase().indexOf("safari")>=0,				//Safari
	CHROME: navigator.userAgent.toLowerCase().indexOf("chrome")>=0,		//Chrome
	PAD: navigator.userAgent.toLowerCase().indexOf("ipad")>=0||navigator.userAgent.toLowerCase().indexOf("iphone")>=0,				//IPAD
	MOB: navigator.userAgent.toLowerCase().indexOf("mobile")>=0				//移动设备
};
Nav.IE6 = Nav.IE && !Nav.IE7 && !Nav.IE8 && !Nav.IE9;					//Internet Explorer 6
if(Nav.IE6)try {document.execCommand("BackgroundImageCache", false, true);} catch(e){};

//2014年2月26日
//打开一个640×480的窗口,第二个参数表示是否需要滚动条，默认为没有(false)，如果你需要，就多传一个true，就可以了
function open6(url,scrollbars,resizable){
	if(url.indexOf("common/dialog/main.asp")>-1) resizable=true;
	return OrtOpenCenterWindow (url,"","toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=" + (resizable?"yes":"no") + ",copyhistory=no,scrollbars="+(scrollbars?"yes":"no")+",width=640,height=480");
}

//2014年2月26日
//打开一个800×600的窗口
function open8(url,scrollbars,resizable){	
	return OrtOpenCenterWindow (url,"","toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=" + (resizable?"yes":"no") + ",copyhistory=no,scrollbars="+(scrollbars?"yes":"no")+",width=800,height=600");
}

//2014年2月26日
//打开一个高度为屏幕4/5的弹出框 ,居中显示
function openSmall(url){
	var sheight = window.screen.height * 4 / 5 ;
	//获得窗口的垂直位置
    var iTop = (window.screen.availHeight-30-sheight)/2;        
    //获得窗口的水平位置
    var iLeft = (window.screen.availWidth-10-1250)/2;  
	return OrtOpenCenterWindow (url,"","toolbar=no,location=no,top=0,left=0,directories=no,status=no,menubar=no,resizable=yes,copyhistory=no,scrollbars=yes,center:yes,height=" + sheight +"px,width=1250px" + ",top="+iTop+",left="+iLeft);
}

//2014年2月26日
//打开一个满屏的窗口
function openX(url,scrollbars){
	var nWidth = screen.availWidth;
	var nHeight = screen.availHeight;
	return OrtOpenCenterWindow (url,"","toolbar=no,location=no,top=0,left=0,directories=no,status=no,menubar=no,resizable=yes,copyhistory=no,scrollbars="+(scrollbars?"yes":"no")+",width="+(nWidth - 10)+",height=" + (nHeight - (Nav.CHROME? 55: 10)));
}

//2014年2月26日
//打开一个满屏的窗口
function openX(url){
	var nWidth = screen.availWidth;
	var nHeight = screen.availHeight;
	return OrtOpenCenterWindow (url,"","toolbar=no,location=no,top=0,left=0,directories=no,status=no,menubar=no,resizable=yes,copyhistory=no,scrollbars=yes,width="+(nWidth - 10)+",height=" + (nHeight - (Nav.CHROME? 55: 10)));
}

//2014年2月26日
function OrtOpenCenterWindow (URL, Name, Features){
    var nWidth,nHeight,strVal,nPos,strComb,i,chVal,nLeft = 0,nTop = 0;
    if (Features == null) return (window.open (URL, Name, Features));
    strVal = Features.toUpperCase ();
    if (strVal.indexOf ("LEFT", 0) >= 0 || strVal.indexOf ("TOP", 0) >= 0) return (window.open (URL, Name, Features));
    if ((nPos = strVal.indexOf ("WIDTH", 0)) < 0) return (window.open (URL, Name, Features));
    if ((nPos = strVal.indexOf ("=", nPos)) < 0) return (window.open (URL, Name, Features));
    strComb = "";
    for (i = nPos + 1; i < Features.length; i ++){
        chVal = Features.charAt (i); if (chVal == " " || (chVal >= "0" && chVal <= "9")) strComb += chVal; else break;
    }
    if ((nWidth = eval (OrtTrimString (strComb))) <= 0) return (window.open (URL, Name, Features));
    if ((nPos = strVal.indexOf ("HEIGHT", 0)) < 0) return (window.open (URL, Name, Features));
    if ((nPos = strVal.indexOf ("=", nPos)) < 0) return (window.open (URL, Name, Features));
    strComb = "";
    for (i = nPos + 1; i < Features.length; i ++){
        chVal = Features.charAt (i); if (chVal == " " || (chVal >= "0" && chVal <= "9")) strComb += chVal; else break;
    }
    if ((nHeight = eval (OrtTrimString (strComb))) <= 0) return (window.open (URL, Name, Features));
    nLeft = (window.screen.width - nWidth) / 2; nTop = (window.screen.height - nHeight) / 2;
    Features += ",left=" + nLeft + ",top=" + nTop;
    return (window.open (URL, Name, Features));
}

//2014年2月26日
function OrtTrimString (strVal){
    var strTmp= strVal + "";
    if (strTmp.length == 0) return (strTmp);
    return strTmp.replace (/^(\s|　)*/, '').replace (/(\s|　)*$/, '');
}

//2014年2月26日
function trim(val){
	var str = val+""; 
	if (str.length == 0) return str;
	return str.replace(/^\s*/,'').replace(/\s*$/,'');
}