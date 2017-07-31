<%-- 
    Document   : delete
    Created on : Jul 31, 2017, 1:41:15 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>

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
            
            try{  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","root","root"); 
             Statement st = con.createStatement();
             
     //        st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('"+id+"','"+name+"','"+descript+"','"+s_date+"')");
             st.executeUpdate("DELETE FROM user_tb WHERE id = "+id+" ");
             // st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('1','asd','escript','s_date')");
            out.print( "<h2 align = \"center\">" +"Data Deleted"+ "</h2>");
            %>
            <form method="get" action="index.jsp">
            <button type="submit">Back</button>
            </form>
            <%
            
            }
            catch(Exception e){
            out.print( e);
            %>
            <form method="get" action="index.jsp">
            <button type="submit">Back</button>
            </form>
            <%
            }
           


        %>
    </body>
</html>
