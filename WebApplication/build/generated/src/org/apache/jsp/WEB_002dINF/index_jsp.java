package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.util.Date;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <form>\n");
      out.write("            <pre>\n");
      out.write("            ID          :<input type=\"text\" name=\"id\" placeholder=\"id\" required></br>\n");
      out.write("            Name        :<input type=\"text\" name=\"name\" placeholder=\"name\"></br>\n");
      out.write("            Description :<input type=\"text\" name=\"descript\" placeholder=\"description\"></br>\n");
      out.write("            \n");
      out.write("            ");

            Date date = new Date();
            String s_date = date.toString();
            out.print( "<h2 align = \"center\">" +s_date+"</h2>");
            
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Create\" formaction=\"insert.jsp\">  <input type=\"submit\" value=\"Edit\" formaction=\"modify.jsp\">  <input type=\"submit\" value=\"Delete\" formaction=\"delete.jsp\">\n");
      out.write("            </pre>\n");
      out.write("            </form>\n");
      out.write("            <form>\n");
      out.write("            <pre>\n");
      out.write("            <input type=\"submit\" value=\"Show All\" formaction =\"showall.jsp\">\n");
      out.write("            </pre>\n");
      out.write("            </form>\n");
      out.write("    </body  \n");
      out.write("</html>\n");
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
}
