package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_actionerror_cssStyle_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_form_method_id_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_actionmessage_cssStyle_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_text_name_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_submit_value_type_id_class;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_actionerror_cssStyle_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_form_method_id_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_actionmessage_cssStyle_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_text_name_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_submit_value_type_id_class = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_actionerror_cssStyle_nobody.release();
    _jspx_tagPool_s_form_method_id_action.release();
    _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody.release();
    _jspx_tagPool_s_actionmessage_cssStyle_nobody.release();
    _jspx_tagPool_s_text_name_nobody.release();
    _jspx_tagPool_s_submit_value_type_id_class.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>");
      if (_jspx_meth_s_text_0(_jspx_page_context))
        return;
      out.write("</title>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/logo.ico\" type=\"image/x-icon\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${basePath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/jquery/jquery.last.min.js\">//</script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("li{\r\n");
      out.write(" list-style: none;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("body,html {\r\n");
      out.write("\theight: 950px;\r\n");
      out.write("\twidth: 900px;\r\n");
      out.write("\tbackground-color: teal;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("    <div id=\"LoginCircle\" style=\"margin-top: 30%; margin-left: 50%;\">\r\n");
      out.write("        <div id=\"LoginDoc\">\r\n");
      out.write("            <div id=\"SysName\" ></div>\r\n");
      out.write("\t\r\n");
      out.write("            ");
      if (_jspx_meth_s_form_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            <div class=\"clear\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"Copy\" style=\"margin-left:  50%;\">\r\n");
      out.write("        <font color=\"red\">pms管理系统</font> Version 1.0 由中国电信系统集成提供技术支持！\r\n");
      out.write("        <br />\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_s_text_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:text
    org.apache.struts2.views.jsp.TextTag _jspx_th_s_text_0 = (org.apache.struts2.views.jsp.TextTag) _jspx_tagPool_s_text_name_nobody.get(org.apache.struts2.views.jsp.TextTag.class);
    _jspx_th_s_text_0.setPageContext(_jspx_page_context);
    _jspx_th_s_text_0.setParent(null);
    _jspx_th_s_text_0.setName("登录页面");
    int _jspx_eval_s_text_0 = _jspx_th_s_text_0.doStartTag();
    if (_jspx_th_s_text_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_text_name_nobody.reuse(_jspx_th_s_text_0);
      return true;
    }
    _jspx_tagPool_s_text_name_nobody.reuse(_jspx_th_s_text_0);
    return false;
  }

  private boolean _jspx_meth_s_form_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:form
    org.apache.struts2.views.jsp.ui.FormTag _jspx_th_s_form_0 = (org.apache.struts2.views.jsp.ui.FormTag) _jspx_tagPool_s_form_method_id_action.get(org.apache.struts2.views.jsp.ui.FormTag.class);
    _jspx_th_s_form_0.setPageContext(_jspx_page_context);
    _jspx_th_s_form_0.setParent(null);
    _jspx_th_s_form_0.setId("LoginFrom");
    _jspx_th_s_form_0.setMethod("post");
    _jspx_th_s_form_0.setAction("main!loginPage.html");
    int _jspx_eval_s_form_0 = _jspx_th_s_form_0.doStartTag();
    if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_form_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_form_0.doInitBody();
      }
      do {
        out.write("\r\n");
        out.write("            ");
        if (_jspx_meth_s_actionmessage_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\t");
        if (_jspx_meth_s_actionerror_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                <div id=\"SysInput\">\r\n");
        out.write("                 <ul>\r\n");
        out.write("                    <li>项目组：</li>\r\n");
        out.write("             <li>\r\n");
        out.write("             \r\n");
        out.write("             \t\t\t");
        if (_jspx_meth_s_select_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("        \r\n");
        out.write("                       </li> \r\n");
        out.write("                </ul>\r\n");
        out.write("                    <ul>\r\n");
        out.write("                        <li>用户名：</li>\r\n");
        out.write("                        <li>\r\n");
        out.write("                            <input id=\"txtUserName\" name=\"user.uname\" value=\"\" type=\"text\" class=\"InputStyle\" maxlength=\"18\" /></li>\r\n");
        out.write("                    </ul>\r\n");
        out.write("                    <ul>\r\n");
        out.write("                        <li>密&nbsp;&nbsp;&nbsp;码：</li>\r\n");
        out.write("                        <li>\r\n");
        out.write("                            <input name=\"user.password\" type=\"password\" class=\"InputStyle\" value=\"\" id=\"txtPassword\" /></li>\r\n");
        out.write("                    </ul>\r\n");
        out.write("                    <ul>\r\n");
        out.write("                        <li>&nbsp;</li>\r\n");
        out.write("                    </ul>\r\n");
        out.write("                    <ul>\r\n");
        out.write("                        <li></li>\r\n");
        out.write("                        <li>\r\n");
        out.write("                            <div style=\"width: 170px; text-align: left\">\r\n");
        out.write("                                ");
        if (_jspx_meth_s_submit_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                <button class=\"sexybutton\" type=\"reset\" ><span><span><span class=\"reload\">重置</span></span></span></button>\r\n");
        out.write("                            </div>\r\n");
        out.write("                        </li>\r\n");
        out.write("\r\n");
        out.write("                    </ul>\r\n");
        out.write("                </div>\r\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_s_form_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_s_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_form_method_id_action.reuse(_jspx_th_s_form_0);
      return true;
    }
    _jspx_tagPool_s_form_method_id_action.reuse(_jspx_th_s_form_0);
    return false;
  }

  private boolean _jspx_meth_s_actionmessage_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:actionmessage
    org.apache.struts2.views.jsp.ui.ActionMessageTag _jspx_th_s_actionmessage_0 = (org.apache.struts2.views.jsp.ui.ActionMessageTag) _jspx_tagPool_s_actionmessage_cssStyle_nobody.get(org.apache.struts2.views.jsp.ui.ActionMessageTag.class);
    _jspx_th_s_actionmessage_0.setPageContext(_jspx_page_context);
    _jspx_th_s_actionmessage_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_actionmessage_0.setCssStyle("color: green");
    int _jspx_eval_s_actionmessage_0 = _jspx_th_s_actionmessage_0.doStartTag();
    if (_jspx_th_s_actionmessage_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_actionmessage_cssStyle_nobody.reuse(_jspx_th_s_actionmessage_0);
      return true;
    }
    _jspx_tagPool_s_actionmessage_cssStyle_nobody.reuse(_jspx_th_s_actionmessage_0);
    return false;
  }

  private boolean _jspx_meth_s_actionerror_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:actionerror
    org.apache.struts2.views.jsp.ui.ActionErrorTag _jspx_th_s_actionerror_0 = (org.apache.struts2.views.jsp.ui.ActionErrorTag) _jspx_tagPool_s_actionerror_cssStyle_nobody.get(org.apache.struts2.views.jsp.ui.ActionErrorTag.class);
    _jspx_th_s_actionerror_0.setPageContext(_jspx_page_context);
    _jspx_th_s_actionerror_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_actionerror_0.setCssStyle("color: red");
    int _jspx_eval_s_actionerror_0 = _jspx_th_s_actionerror_0.doStartTag();
    if (_jspx_th_s_actionerror_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_actionerror_cssStyle_nobody.reuse(_jspx_th_s_actionerror_0);
      return true;
    }
    _jspx_tagPool_s_actionerror_cssStyle_nobody.reuse(_jspx_th_s_actionerror_0);
    return false;
  }

  private boolean _jspx_meth_s_select_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:select
    org.apache.struts2.views.jsp.ui.SelectTag _jspx_th_s_select_0 = (org.apache.struts2.views.jsp.ui.SelectTag) _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody.get(org.apache.struts2.views.jsp.ui.SelectTag.class);
    _jspx_th_s_select_0.setPageContext(_jspx_page_context);
    _jspx_th_s_select_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_select_0.setList("projecGtroupList");
    _jspx_th_s_select_0.setListKey("id");
    _jspx_th_s_select_0.setListValue("groupName");
    _jspx_th_s_select_0.setCssStyle("width:100px");
    _jspx_th_s_select_0.setHeaderKey("");
    _jspx_th_s_select_0.setHeaderValue("-- 全部 --");
    _jspx_th_s_select_0.setName("projecGtroup.id");
    int _jspx_eval_s_select_0 = _jspx_th_s_select_0.doStartTag();
    if (_jspx_th_s_select_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody.reuse(_jspx_th_s_select_0);
      return true;
    }
    _jspx_tagPool_s_select_name_listValue_listKey_list_headerValue_headerKey_cssStyle_nobody.reuse(_jspx_th_s_select_0);
    return false;
  }

  private boolean _jspx_meth_s_submit_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:submit
    org.apache.struts2.views.jsp.ui.SubmitTag _jspx_th_s_submit_0 = (org.apache.struts2.views.jsp.ui.SubmitTag) _jspx_tagPool_s_submit_value_type_id_class.get(org.apache.struts2.views.jsp.ui.SubmitTag.class);
    _jspx_th_s_submit_0.setPageContext(_jspx_page_context);
    _jspx_th_s_submit_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_submit_0.setDynamicAttribute(null, "class", new String("sexybutton"));
    _jspx_th_s_submit_0.setId("btnLogin");
    _jspx_th_s_submit_0.setType("sbumit");
    _jspx_th_s_submit_0.setValue("登录");
    int _jspx_eval_s_submit_0 = _jspx_th_s_submit_0.doStartTag();
    if (_jspx_eval_s_submit_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_submit_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_submit_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_submit_0.doInitBody();
      }
      do {
        out.write("<span><span><span class=\"usergo\"></span></span></span>");
        int evalDoAfterBody = _jspx_th_s_submit_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_submit_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_s_submit_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_submit_value_type_id_class.reuse(_jspx_th_s_submit_0);
      return true;
    }
    _jspx_tagPool_s_submit_value_type_id_class.reuse(_jspx_th_s_submit_0);
    return false;
  }
}
