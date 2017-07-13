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
            String title = request.getParameter("text11");
            String link = request.getParameter("text21");
            String content = request.getParameter("text31");
       java.sql.Connection con=null;
   
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");
           Statement stmt = (Statement) con.createStatement();
           String query="INSERT INTO notifications VALUES('"+title+"','"+link+"','"+content+"')";
           stmt.executeUpdate(query);
           con.close();
           %>
           
    </body>
</html>
