<%@ page import="java.sql.*"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body bgcolor="cyan">
<%
    java.sql.Connection con = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");%>
    <div class="status">
        <% out.println ("Data base is Successfully Connected and Ready to use.........");%>
    </div>
        
   <% }
    catch(SQLException e) {
    out.println("Not Connected");
  }
%>
<form action="notifications_control add.jsp" >   
<input type="submit" class="button" value="Add Notifications">
</form>
<form action="notifications control remove.jsp">
<input type="submit" class="button" value="Remove Notifications">
</form>  
</body>
</html>

