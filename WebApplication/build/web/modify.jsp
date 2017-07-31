<%-- 
    Document   : modify
    Created on : Jul 31, 2017, 1:39:29 PM
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
            
            Date date = new Date();
            String s_date = date.toString();
            
            
            try{  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","root","root"); 
             Statement st = con.createStatement();
             
             if(!name.equals("")){
     //        st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('"+id+"','"+name+"','"+descript+"','"+s_date+"')");
             st.executeUpdate("UPDATE user_tb SET name = '"+name+"' , date_Update = '"+s_date+"' WHERE id = "+id+" ");
             out.println( "<h2 align = \"center\">" +"Data name Updated"+ "</h2>"); 
            // st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('1','asd','escript','s_date')");
             }
             if(!descript.equals("")){
     //        st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('"+id+"','"+name+"','"+descript+"','"+s_date+"')");
             st.executeUpdate("UPDATE user_tb SET description = '"+descript+"' , date_Update = '"+s_date+"' WHERE id = "+id+" ");
             out.println( "<h2 align = \"center\">" +"Data Description Updated"+ "</h2>");
            // st.executeUpdate("insert into user_tb(id,name,description,date_Create)values('1','asd','escript','s_date')");
             }
             
             if((descript.equals(""))&&(name.equals(""))){
             out.println( "<h2 align = \"center\">" +"Please insert data for update"+ "</h2>");
             }
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
