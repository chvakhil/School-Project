<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css" type="text/css">
<style>
.mySlides {
    display:none;
    border-radius: 5%;
    
}
</style>
<body>
    
    <div class="home">
        <div class="home1">
            <div class="notifications_heading">
                Notifications
            </div>
            <div>
         
                <marquee direction="up" height="220px" onMouseOver="this.stop();" onMouseOut="this.start();">
                           <%
       java.sql.Connection con=null;
   
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/akhil","root","root");
           Statement stmt = (Statement) con.createStatement();
           String query="SELECT * FROM notifications";
           ResultSet rs =stmt.executeQuery(query);
           while(rs.next()){
                           %><strong>-><a href="<% out.println(rs.getString(2)); %>" target="_blank"><% out.println(rs.getString(1)); %></a></strong><br><%
                               %><small><% out.println(rs.getString(3)); %></small><br><br><%
                   }
                con.close();
                    %>
                </marquee>
            </div>
        </div>
    <div class="images">
        <img class="mySlides"  src="bg.jpg" width="820" height="470">
        <img class="mySlides"  src="bg1.jpg" width="820" height="470">
    </div>
    </div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>
<div class="bottomline">
<div class="copyrights">
    Copyright © 2017 - All Rights Reserved
    </div>
    <div class="developer">
        Developed by <a href="https://www.linkedin.com/in/chvakhil/" target="_blank">Akhil Chakicherla</a>
    </div>
</div>
</body>
</html>
