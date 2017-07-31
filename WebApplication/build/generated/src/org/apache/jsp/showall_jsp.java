package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.sql.*;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public final class showall_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");

String id = request.getParameter("id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jspdb";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write("\n");
      out.write("<h2 align=\"center\"><font><strong>Retrieve data from database in jsp</strong></font></h2>\n");
      out.write("<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\" border=\"1\">\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td><b>ID</b></td>\n");
      out.write("<td><b>Name</b></td>\n");
      out.write("<td><b>Description</b></td>\n");
      out.write("<td><b>Date Created</b></td>\n");
      out.write("<td><b>Last Update</b></td>\n");
      out.write("</tr>\n");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM user_tb";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<td>");
      out.print(resultSet.getString("id") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("description") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("date_Create") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("date_Update") );
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");
 
}

} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>\n");
      out.write("<form method=\"get\" action=\"index.jsp\">\n");
      out.write("    <button type=\"submit\">Back</button>\n");
      out.write("</form>\n");
      out.write("    </body>\n");
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
