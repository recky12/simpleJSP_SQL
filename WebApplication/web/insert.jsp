<%-- 
    Document   : insert
    Created on : Jul 31, 2017, 1:37:24 PM
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
            String name = request.getParameter("name");
            String descript = request.getParameter("descript");
            
        if((!id.equals(""))&&(!name.equals(""))&&(!descript.equals(""))){
            
            
            Date date = new Date();
            String s_date = date.toString();
            
            
            try{  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","root","root"); 
             Statement st = con.createStatement();
             
             st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('"+id+"','"+name+"','"+descript+"','"+s_date+"')");
           
             out.print( "new record is added");
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
        }
        else{
        out.print("Please Fill Up the complete form");
        }


        %>
    </body>
</html>

