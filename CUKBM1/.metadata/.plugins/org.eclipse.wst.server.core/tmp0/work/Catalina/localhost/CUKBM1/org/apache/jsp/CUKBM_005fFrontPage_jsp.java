/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.17
 * Generated at: 2019-06-07 10:03:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CUKBM_005fFrontPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1556518602000L));
    _jspx_dependants.put("jar:file:/C:/CUKBM1/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/CUKBM1/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction hover1(element) {\r\n");
      out.write("\t  element.setAttribute('src', 'img/front/liverpool.jpg');\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction unhover1(element) {\r\n");
      out.write("\t  element.setAttribute('src', 'img/front/soccer.jpg');\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction hover2(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/nba.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction unhover2(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/basketball.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("\tfunction hover3(element) {\r\n");
      out.write("\t\t\t  element.setAttribute('src', 'img/front/ttcrew.PNG');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction unhover3(element) {\r\n");
      out.write("\t\t\t  element.setAttribute('src', 'img/front/tabletennis.jpg');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\tfunction hover4(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/esports.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction unhover4(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/lol.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("\tfunction hover5(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/badminton3.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("\tfunction unhover5(element) {\r\n");
      out.write("\t\t  element.setAttribute('src', 'img/front/badminton.jpg');\r\n");
      out.write("\t\t}\r\n");
      out.write("</script>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<title>Welcome to CUKBM</title>\r\n");
      out.write("<style>\r\n");
      out.write("@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');\r\n");
      out.write("@import url('https://fonts.googleapis.com/css?family=Sarpanch:900');\r\n");
      out.write("* {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("  text-rendering: optimizeLegibility;\r\n");
      out.write("  font-kerning: auto;\r\n");
      out.write("}\r\n");
      out.write("html {\r\n");
      out.write("  font-size: 10pt;\r\n");
      out.write("  line-height: 1.4;\r\n");
      out.write("  font-weight: 400;\r\n");
      out.write("  font-family: 'Source Sans Pro', 'Open Sans', Roboto, 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', 'Myriad Pro', 'Segoe UI', Myriad, Helvetica, 'Lucida Grande', 'DejaVu Sans Condensed', 'Liberation Sans', 'Nimbus Sans L', Tahoma, Geneva, Arial, sans-serif;\r\n");
      out.write("}\r\n");
      out.write("body {\r\n");
      out.write("  margin: 0;\r\n");
      out.write("  background: #eee;\r\n");
      out.write("}\r\n");
      out.write("section {\r\n");
      out.write("  height: 100vh;\r\n");
      out.write("  background-image: url(\"img/front/pic6_1.jpg\");\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("  font-family: 'Passion One', cursive;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("header {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  padding: 1em;\r\n");
      out.write("  font-size: 140%;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 100vh;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  transition: opacity .2s ease-in-out;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("nav a {\r\n");
      out.write("  display: inline-block;\r\n");
      out.write("  outline: none;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  opacity: .7;\r\n");
      out.write("  padding: 0 .5em;\r\n");
      out.write("  color: black;\r\n");
      out.write("  transition: opacity .2s ease-in-out;\r\n");
      out.write("}\r\n");
      out.write("nav a:hover, nav a:focus {\r\n");
      out.write("  opacity: 1;\r\n");
      out.write("}\r\n");
      out.write("article {\r\n");
      out.write("  margin: 5em auto 0;\r\n");
      out.write("  padding: 1em;\r\n");
      out.write("  font-size: 140%;\r\n");
      out.write("  max-width: 1200px;\r\n");
      out.write("  background: white;\r\n");
      out.write("  box-shadow: rgba(0,0,0,.05) 0 3px 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media (min-width: 500px) {\r\n");
      out.write("  header {\r\n");
      out.write("    text-align: left;\r\n");
      out.write("  }\r\n");
      out.write("  nav {\r\n");
      out.write("    float: right;\r\n");
      out.write("  }\r\n");
      out.write("  article {\r\n");
      out.write("    margin: 3.5em auto 0;\r\n");
      out.write("    padding: 2em;\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("@media (min-width: 800px) {\r\n");
      out.write("  article {\r\n");
      out.write("    margin: 3.5em auto;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.logo{\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("  \tfont-size: 420%;\r\n");
      out.write("  \ttext-align: center;\r\n");
      out.write(" \tline-height: 1;\r\n");
      out.write(" \tpadding-top: 180px;\r\n");
      out.write(" \tdisplay: block;\r\n");
      out.write("  \tfont-weight: 400;\r\n");
      out.write("  \tcolor: #fff;\r\n");
      out.write("  \tletter-spacing: 2px;\r\n");
      out.write("}\r\n");
      out.write("div.logo_start{\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("  \tfont-size: 320%;\r\n");
      out.write("  \ttext-align: center;\r\n");
      out.write(" \tline-height: 1;\r\n");
      out.write(" \tpadding-top: 6px;\r\n");
      out.write(" \tdisplay: block;\r\n");
      out.write("  \tfont-weight: 400;\r\n");
      out.write("\tmargin-top: 50px;\r\n");
      out.write("\tletter-spacing: 2px;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.logo_start a{\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tpadding : 4px;\r\n");
      out.write("\tborder: 3px solid white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.logo_start a:hover{\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("}\r\n");
      out.write("article.mpic{\r\n");
      out.write("  width: 700px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  border: 1px solid #ccc;\r\n");
      out.write("  box-shadow: 2px 2px 6px 0px  rgba(0,0,0,0.3);\r\n");
      out.write("}\r\n");
      out.write("article.mpic img {\r\n");
      out.write("  max-width: 100%;\r\n");
      out.write("}\r\n");
      out.write("div.text{\r\n");
      out.write("\ttext-align: left;\r\n");
      out.write("\tpadding-left: 60px; \r\n");
      out.write("}\r\n");
      out.write("div.go {\t\r\n");
      out.write("  background: gray;\r\n");
      out.write("  border: 0;\r\n");
      out.write("  color: white;\r\n");
      out.write("  padding: 8px;\r\n");
      out.write("  width: 55%;\r\n");
      out.write("  font-size: 18px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  margin-bottom:20px;\r\n");
      out.write("  }\r\n");
      out.write("  div.go a{\r\n");
      out.write("  \ttext-decoration: none;\r\n");
      out.write("  \tcolor: white;\r\n");
      out.write("  }\r\n");
      out.write("  div.text p{\r\n");
      out.write("  \tfont-size: 21px;\r\n");
      out.write("  }\r\n");
      out.write("  h1.tt {\r\n");
      out.write("  transform: skew(-12 deg) rotate(-12 deg);\r\n");
      out.write("  grid-area: text;\r\n");
      out.write("  font-family: 'Sarpanch', sans-serif;\r\n");
      out.write("  font-size: 5em;\r\n");
      out.write("  padding-left: 235px;\r\n");
      out.write("  color: #1d9099;\r\n");
      out.write("  text-shadow: 0.7vmin 0.7vmin 0 #E79C10, -0.7vmin -0.7vmin 0 #D53A33;\r\n");
      out.write("}\r\n");
      out.write("  \r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<section>\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t<img src=\"img/logo.png\" width=\"300\" height=\"210\"/><br>\r\n");
      out.write("  \t\t\t<span>BIG MATCH</span><br> \t\r\n");
      out.write("  \t\t</div><br><br>\r\n");
      out.write("  \t\t<hr><br><hr>\r\n");
      out.write("  \t\t<div class=\"logo_start\">\r\n");
      out.write("  \t\t\t<a href=\"#main\">START</a>\r\n");
      out.write("  \t\t</div>\t\t\t\r\n");
      out.write("\t</section>\r\n");
      out.write("<header>\r\n");
      out.write("  <nav>\r\n");
      out.write("  \t");
      if (_jspx_meth_c_005fchoose_005f0(_jspx_page_context))
        return;
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("  </nav>\r\n");
      out.write("</header>\r\n");
      out.write("<article id=\"main\">\r\n");
      out.write("\t<h1 class=\"tt\">Find Players!</h1>\r\n");
      out.write("  <div class=\"\">  \r\n");
      out.write("  <article class=\"mpic\">\r\n");
      out.write("    <img src=\"img/front/soccer.jpg\" width=\"480px\" height=\"330\" onmouseover=\"hover1(this);\" onmouseout=\"unhover1(this);\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>SOCCER</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=soccer&TEAM=0\">1:1 MATCH</a></div>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=soccer&TEAM=1\">TEAM MATCH</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  \r\n");
      out.write("  <article class=\"mpic\">\r\n");
      out.write("    <img src=\"img/front/basketball.jpg\" width=\"480px\" height=\"330\" onmouseover=\"hover2(this);\" onmouseout=\"unhover2(this);\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>BASKETBALL</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=basketball&TEAM=0\">1:1 MATCH</a></div>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=basketball&TEAM=1\">TEAM MATCH</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  \r\n");
      out.write("  <article class=\"mpic\">\r\n");
      out.write("     <img src=\"img/front/tabletennis.jpg\" width=\"480px\" height=\"330\" onmouseover=\"hover3(this);\" onmouseout=\"unhover3(this);\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>TABLE TENNIS</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=tabletennisl&TEAM=0\">1:1 MATCH</a></div>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=tabletennis&TEAM=1\">TEAM MATCH</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  \r\n");
      out.write("  <article class=\"mpic\">\r\n");
      out.write("     <img src=\"img/front/lol.jpg\" width=\"480px\" height=\"330\" onmouseover=\"hover4(this);\" onmouseout=\"unhover4(this);\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>ESPORTS</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=esports&TEAM=0\">1:1 MATCH</a></div>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=esports&TEAM=1\">TEAM MATCH</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  \r\n");
      out.write("  <article class=\"mpic\">\r\n");
      out.write("     <img src=\"img/front/badminton.jpg\" width=\"480px\" height=\"330\" onmouseover=\"hover5(this);\" onmouseout=\"unhover5(this);\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>BADMINTON</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=badminton&TEAM=0\">1:1 MATCH</a></div>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=badminton&TEAM=1\">TEAM MATCH</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  \r\n");
      out.write("\t<article class=\"mpic\">\r\n");
      out.write("     <img src=\"img/front/free3.jpg\" width=\"480px\" height=\"330\">\r\n");
      out.write("    <div class=\"text\">\r\n");
      out.write("      <h3>자유게시판</h3>\r\n");
      out.write("      <p>뭐라고 적을까요오</p>\r\n");
      out.write("      <div class=\"go\"><a href=\"Board?SUBJECT=free\">Lets' Start!</a></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </article>\r\n");
      out.write("  </div>\r\n");
      out.write("</article>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fchoose_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    boolean _jspx_th_c_005fchoose_005f0_reused = false;
    try {
      _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fchoose_005f0.setParent(null);
      int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
      if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t");
          if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("\t\t");
          if (_jspx_meth_c_005fotherwise_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write('\r');
          out.write('\n');
          out.write('	');
          int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
      _jspx_th_c_005fchoose_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fwhen_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    boolean _jspx_th_c_005fwhen_005f0_reused = false;
    try {
      _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      // /CUKBM_FrontPage.jsp(214,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.LOGIN_ID == null }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
      if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t<a href=\"CUKBM_FrontPage.jsp\">HOME</a>\r\n");
          out.write("\t\t\t<a href=\"Login.jsp\">LOGIN</a>\r\n");
          out.write("\t\t\t<a href=\"Agreement.jsp\">JOINUS</a>\r\n");
          out.write("\t\t");
          int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      _jspx_th_c_005fwhen_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fotherwise_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    boolean _jspx_th_c_005fotherwise_005f0_reused = false;
    try {
      _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
      if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t\t<a href=\"CUKBM_FrontPage.jsp\">HOME</a>\r\n");
          out.write("\t\t\t<a href=\"myPage\">MYPAGE</a>\r\n");
          out.write("\t\t\t<a href=\"logout\">LOGOUT</a>\t\t\r\n");
          out.write("\t\t");
          int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
      _jspx_th_c_005fotherwise_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
    }
    return false;
  }
}
