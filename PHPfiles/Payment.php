<!DOCTYPE html>
<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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
<head>	
  <title>Payment</title>	
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>

  <section class="container">
    <div class="login">
     
	  <td class = "title" style="position: fixed; top: 100px; right: 10000px; width: 100%; text-align:center;">
	   <h1><center>PAYMENT METHOD</h1></td><br><br><br>
	  <form action="insert_creditcard.php" method="post">
	  
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

            <div> 
            <label for="cname">Name on Card: </label>
            <input type="text" id="cname" name="cardname"><br>
			<br/>
			<br/>
            <label for="ccnum">Credit Card Number: </label>
            <input type="text" id="ccnum" name="cardnumber"><br><br>
			<br/>
                      
            <label class="form-label">Expiration Date:</label><br>
			  <label for="text"> Day: </label>
            <input type="textarea" id="day" name="day" value ="">
            <select id="expiration-month" name = "month">
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
            </select>
             
            <select id="expiration-year" name = "year">
			<option value=''>Year</option>
					<?php 
						$year = date ('Y');
						$years = range ($year, $year + 10);

					
						foreach ($years as $value) {echo '<option>' . $value;}
					
				?>
            </select><br><br><br>
             
             <label for="ccnum">CVV: </label>
            <input type="password" id="card-security-code" name="cvv" value=""></input><br><br><br>
			</div>
             
            <button><center> <type="submit" name="pay" value="Pay »">Pay >></button>
<?php
$conn->close();

?>
        </form>
    </body>
</html>