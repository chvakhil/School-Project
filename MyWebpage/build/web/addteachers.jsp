<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
<body>

    <h3>Adding Teachers to School Database</h3>

    <div class="form2">
  <form action="finaladd.jsp">
    <label for="fname">Employee ID</label>
    <input type="text" name="text1" placeholder="S.No">

    <label for="lname">Name</label>
    <input type="text" name="text2" placeholder="Name of Teacher">

    <label for="country">Cadre</label>
    <select name="text3">
      <option value="Head Master">Head Master</option>
      <option value="Assistant HM">Asst. HM & SA</option>
      <option value="School Assistant">School Assistant</option>
      <option value="Lab Assistant">Lab Assistant</option>
      <option value="Attender">Attender</option>
      
    </select>
    
       <label for="lname">Mobile Number</label>
    <input type="text" name="text4" placeholder="Enter 10 Digit Mobile Number..."> 

<label for="lname">Class</label>
    <input type="text" name="text5" placeholder="Enter assigned class...">    

  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
