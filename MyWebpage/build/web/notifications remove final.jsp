<%-- 
    Document   : notifications_control
    Created on : Jul 12, 2017, 8:44:36 PM
    Author     : Akhil
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String rv_val = request.getParameter("rv_val");
       java.sql.Connection con=null;
   
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");
           Statement stmt = (Statement) con.createStatement();
           String query="DELETE FROM notifications WHERE title='"+rv_val+"'";
           stmt.executeUpdate(query);
           con.close();
           %>
           
    </body>
</html>
