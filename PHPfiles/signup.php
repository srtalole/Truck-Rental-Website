<!DOCTYPE html>
<html>
<body>
<!DOCTYPE html>
<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<?php

session_start();
$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "truckrental";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.myLink {display: none}
#what{
color:red;}
	
</style>
<body class="w3-light-grey">

<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-border-bottom w3-xlarge">
  <a href="#" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b><i class="w3-margin-right"></i>Raptor Truck Rental</b></a>

</div>	


<form align="center" action="insert_customer.php" method="post">
<td class = "title" style="position: fixed; top: 100px; right: 10000px; width: 100%; text-align:center;">
<h1><center>Register Now</h1></td><br><br><br>
First Name :<input name = "firstname"><br><br>
Last Name  :<input name = "lastname"><br><br>
User name :<input name = "Username"><br><br>
Password:<input type="password" name = "password"><br><br>
Email_id  :<input type = "email" name = "Email"><br><br>
Phone Number : <input type = "number_format" name = "phone_number"><br><br>
License number : <input name = "driverslicense"><br><br>

<script type="text/javascript">
function jsFunction(value)
{
	 var x = document.getElementById("Corpdetails");
    if (value === "Corporate") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>

<label for="custtype">Choose type</label>
<select name="cust_type" id=type onchange="jsFunction(this.value);">
   <option>Choose customer Type</option>
   <option name = "reg" value="Regular">Regular</option>
   <option name = "Cor" value="Corporate">Corporate</option>
</select><br><br>

<div id="Corpdetails" style = "display:none;">
  <label for="specify">Company_id</label>
  <input type="text" name="cmp_id" /><br><br>
  <label for="specify">Company Name</label>
  <input type="text" name="cmp_name" /><br><br>  
</div>


<div>
<input type = "submit"  value = "Register"></input>
</div>
</form>
</body>
</html>

