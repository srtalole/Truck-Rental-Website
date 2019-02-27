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

  <section class="container">
    <div class="login">
	<td class = "title" style="position: fixed; top: 100px; right: 10000px; width: 100%; text-align:center;">
      <h1><center>LOGIN TO RAPTOR TRUCK RENTAL WEBSITE</h1></td><br><br><br>
      <form  align="center" action="validate_customer.php" method="post" >
	    <label for="uname"><b>Username/Email</b></label>
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
		<label for="uname"><b>Password</b></label>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
       
          </label>
       <button type="submit" name="submit">Login</button>
	<button type="submit">Help</button>
      </form>
    </div>

    