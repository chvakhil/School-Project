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
        String sno=request.getParameter("text1");
        String name=request.getParameter("text2");
        String cadre=request.getParameter("text3");
        String mobile=request.getParameter("text4");
        String class1=request.getParameter("text5");
        /*out.println(sno);
        out.println(name);
        out.println(cadre);
        out.println(mobile);
        out.println(class1);*/
    java.sql.Connection con = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");%>
    <div class="status">
        <% out.println ("Data base is Successfully Connected and Ready to use.........");%>
    </div>
        
   <% 
       Statement stmt = (Statement) con.createStatement();
       String str ="INSERT INTO teachers VALUES('"+sno+"','"+name+"','"+cadre+"','"+mobile+"','"+class1+"')";
       stmt.executeUpdate(str);
       con.close();
       out.println("Added Successfully.....!!!");
           }
    catch(SQLException e) {
    out.println("SQLException caught: " +e);
  }
%>
    </body>
</html>
