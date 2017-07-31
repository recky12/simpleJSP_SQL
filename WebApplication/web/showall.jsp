<%-- 
    Document   : showall
    Created on : Jul 31, 2017, 1:42:40 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<%
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
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="1" cellspacing="1" border="1">
<tr>

</tr>
<tr>
<td><b>ID</b></td>
<td><b>Name</b></td>
<td><b>Description</b></td>
<td><b>Date Created</b></td>
<td><b>Last Update</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM user_tb";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("date_Create") %></td>
<td><%=resultSet.getString("date_Update") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<form method="get" action="index.jsp">
    <button type="submit">Back</button>
</form>
    </body>
</html>
