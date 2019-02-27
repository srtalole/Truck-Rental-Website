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

<!-- Header -->
<header class="w3-display-container w3-content w3-hide-small" style="max-width:1200px">
  <img class="w3-image" src="bgtruck.jpg" alt="RaptorRental" width="1200" height="700">
  <div class="w3-display-middle" style="width:65%">
    <div class="w3-bar w3-black">

<b><form action="signup.php" method="post" >	
	<button class="w3-bar-item w3-button tablink" ><i class="fa fa-car w3-margin-right" type= "submit" name = "signup"  ></i>Signup</button>
</form>
<b><form action="login.php" method="post" >	
	<button class="w3-bar-item w3-button tablink"  ><i class="fa fa-car w3-margin-right" type = "submit" name = "login" ></i>Login</button>
 </form>    
	
	  
    </div>
</form>
    <div>
      <h3><span class="w3-tag w3-deep-orange">Best car rental in the world!</h3>
      <p><span class="w3-tag w3-deep-orange">DISCOUNT!</p><span class="w3-tag w3-dark-grey" >Special offer.Book today get 25% off your next rental with code RaptorsRule</p></span>
  

    </div>
  </div>
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px;">

  <!-- Good offers -->
  <div class="w3-container w3-margin-top">
    <h3>Current offers</h3>
    <h6>Up to <strong>5%</strong> discount.</h6>
  </div>
  <div class="w3-row-padding w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="colorado.jpg" alt="Chevy Colorado" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Chevy Colorado</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="roxor.jpg" alt="Roxor" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Roxor</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="mar.jpg" alt="Marauder" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Marauder</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="benz.jpg" alt="Merc" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Mercedes</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="tesla.jpg" alt="Tesla" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Tesla</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  


  
  <!-- Contact -->
  <div class="w3-container">
    <h2>Contact</h2>
    <p>Booking/invoice Issues?</p>
    <i class="fa fa-map-marker" style="width:30px"></i> Charlotte, US<br>
    <i class="fa fa-phone" style="width:30px"></i> Phone: +1234567890<br>
    <i class="fa fa-envelope" style="width:30px"> </i> Email: CATS@raptorrental.com<br>

</div>

<!-- Footer -->
<footer class="w3-container w3-center w3-opacity w3-margin-bottom">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  
</footer>

<script>

</script>

</body>
</html>