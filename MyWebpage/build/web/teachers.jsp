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
    out.println("SQLException caught: " +e);
  }
%>
    <form name="form1" method="get" action="addteachers.jsp">
    <input type="submit" class="button" value="Add Teachers">
</form>
<form name="form2" method="get" action="viewteachers.jsp">
    <input type="submit" class="button" value="View Teachers">
</form>
    <form name="form2" method="get" action="removechoice.jsp">
    <input type="submit" class="button" value="Remove Teachers">
</form>

</body>
</html>

