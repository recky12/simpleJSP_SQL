<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.util.Date" %>

<%-- 
    Document   : index
    Created on : Jul 31, 2017, 1:33:38 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form>
            <pre>
            ID          :<input type="text" name="id" placeholder="id" required></br>
            Name        :<input type="text" name="name" placeholder="name"></br>
            Description :<input type="text" name="descript" placeholder="description"></br>
            
            PS: 
            To Create, user need to fill up ID, Name, Description.
            To Edit, user need to fill up ID and either Name or Description to updated.
            To Delete, user only need to fill up id form.    
            <%
            Date date = new Date();
            String s_date = date.toString();
            
            %>

            
            <input type="submit" value="Create" formaction="insert.jsp">  <input type="submit" value="Edit" formaction="modify.jsp">  <input type="submit" value="Delete" formaction="delete.jsp">
            </pre>
            </form>
            <form>
            <pre>
            <input type="submit" value="Show All" formaction ="showall.jsp">
            </pre>
            </form>
    </body  
</html>
