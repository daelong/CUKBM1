/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.17
 * Generated at: 2019-06-07 09:53:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');\r\n");
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
      out.write("  height: 30vh;\r\n");
      out.write("  background-image: url(\"img/front/pic6_1.jpg\");\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("  font-family: 'Passion One', cursive;\r\n");
      out.write("}\r\n");
      out.write("header {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  padding: 1em;\r\n");
      out.write("  font-size: 140%;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 30vh;\r\n");
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
      out.write("}\r\n");
      out.write("@media (min-width: 800px) {\r\n");
      out.write("  article {\r\n");
      out.write("    margin: 3.5em auto;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.logo{\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("  \tfont-size: 600%;\r\n");
      out.write("  \ttext-align: center;\r\n");
      out.write(" \tline-height: 1;\r\n");
      out.write(" \tpadding-top: 80px;\r\n");
      out.write(" \tdisplay: block;\r\n");
      out.write("  \tfont-weight: 400;\r\n");
      out.write("  \tcolor: #fff;\r\n");
      out.write("  \tletter-spacing: 4px;\r\n");
      out.write("}\r\n");
      out.write("div.login{\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tmargin-left: 400px;\r\n");
      out.write("}\r\n");
      out.write("div.login_text{\r\n");
      out.write("\tfont-weight: 400;\r\n");
      out.write("\tfont-size: 150%;\r\n");
      out.write("\tmargin-top: 120px;\r\n");
      out.write("\tmargin-bottom: 30px;\r\n");
      out.write("}\r\n");
      out.write("input[type=text], input[type=password]{\r\n");
      out.write("\twidth: 280px;\r\n");
      out.write("\theight: 30px;\r\n");
      out.write("\tmargin-bottom: 30px;\r\n");
      out.write("\tborder-radius: 10px;\r\n");
      out.write("\tborder: 1.5px solid black;\r\n");
      out.write("\tfont-size: 15px;\r\n");
      out.write("\tcolor: #424242;\r\n");
      out.write("\tpadding-left: 10px;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("input[type=password]{\r\n");
      out.write("\tmargin-bottom: 40px;\r\n");
      out.write("}\r\n");
      out.write("input:focus{\r\n");
      out.write("\toutline:none;\r\n");
      out.write("}\r\n");
      out.write("input[type=submit]{\r\n");
      out.write("\twidth: 120px;\r\n");
      out.write("\theight: 35px;\r\n");
      out.write("\tbackground:black;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tfont-size: 100%;\r\n");
      out.write("\tborder-radius: 10px;\r\n");
      out.write("\tborder: 1.5px solid black;\r\n");
      out.write("\tcursor:pointer;\r\n");
      out.write("}\r\n");
      out.write("input[type=submit]:hover{\r\n");
      out.write("\tbackground-color:#FFAB00;\r\n");
      out.write("\topacity: 0.7;\r\n");
      out.write("\tborder: 1.5px solid white;\r\n");
      out.write("}\r\n");
      out.write("a.join{\r\n");
      out.write("\tmargin-left: 16px;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tcolor: #FFAB00;\r\n");
      out.write("\tfont-weight: 700;\r\n");
      out.write("\tfont-size: 110%;\r\n");
      out.write("}\r\n");
      out.write("div.et{\r\n");
      out.write("\theight: 150px;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<section>\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("  \t\t\t<span>CUKBM</span><br> \t\r\n");
      out.write("  \t\t</div>\t\t\r\n");
      out.write("\t</section>\r\n");
      out.write("<header>\r\n");
      out.write("  <nav>\r\n");
      out.write("    <a href=\"CUKBM_FrontPage.jsp\">HOME</a>\r\n");
      out.write("\t<a href=\"Login.jsp\">LOGIN</a>\r\n");
      out.write("\t<a href=\"Agreement.jsp\">JOINUS</a>\r\n");
      out.write("  </nav>\r\n");
      out.write("</header>\r\n");
      out.write("<article>\r\n");
      out.write("\t<div class=\"login\">\t\t\r\n");
      out.write("\t\t\t<div class=\"login_text\">ACCOUNT LOGIN</div>\r\n");
      out.write("\t\t\t<form action=\"login\" method=post>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<span>USERNAME</span><br>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=id size=12><br>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<span>PASSWORD</span><br>\r\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=password size=12><br>\t\r\n");
      out.write("\t\t\t\t</div>\t\t\r\n");
      out.write("\t\t\t\t<input type=submit value='LOGIN'>\r\n");
      out.write("\t\t\t\t \t<a class=\"join\" href=\"Agreement.jsp\">JOIN MEMBER</a>\t\t\t\t\r\n");
      out.write("\t\t\t</form>\t\r\n");
      out.write("\t\t</div>\t\r\n");
      out.write("\t\t<div class=\"et\"></div>\t\r\n");
      out.write("</article>\r\n");
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
}
