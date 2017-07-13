<%-- 
    Document   : finaladd
    Created on : Jul 8, 2017, 10:14:55 PM
    Author     : Akhil
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String num=request.getParameter("sel");
            java.sql.Connection con = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");%>
    <div class="status">
        <% out.println (".......Data base is Successfully Connected and Ready to use.........");%>
    </div>
        
   <% 
       Statement stmt = (Statement) con.createStatement();
       %><%
       String str ="DELETE FROM teachers WHERE name='"+num+"'";
       stmt.execute(str);
       con.close();
       out.println("Teacher  "+num+" is removed successfully....");
           }
    catch(SQLException e) {
    out.println("SQLException caught: " +e);
  }
%>

    </body>
</html>
