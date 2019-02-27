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
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Current Reservations</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
  <section class="container">
    <div class="login">
		<td class = "title" style="position: fixed; top: 100px; right: 10000px; width: 100%; text-align:center;">
      <h1><center>My Reservations</h1></td><br><br><br>
	  <form align="center" action="updatereservation.php" method="get">

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

<?Php
date_default_timezone_set('America/New_York');
	$cancelAvailable = 0;
	$pickupAvailable = 0;
	$completeAvailable = 0;


$stmt="SELECT * FROM reservation where Customer_id =".$_SESSION['cust_id']. " and (actual_dropoffdate is null or actual_selectdate is null) and cancel_status = 0";


$result = $conn->query($stmt);
		
if ($result->num_rows > 0) {
	
	echo "The existing reservations is <br><br>";	
    // output data of each row
  $row = $result->fetch_assoc();
$_SESSION['reservationId'] = $row["Reservation_id"];
$_SESSION['startdate'] = $row["actual_selectdate"]; 

  echo "<div> Reservation Number: " . $row["Reservation_id"]."</div>";
        echo "Start Date: " . $row["Selected_Date"]."<br><br>";
        echo "End Date: " . $row["Dropoff_Date"]."<br><br>"; 	 
		$canCancelUntil = date("Y-m-d H:i:s", strtotime('+24 hours'));
		

		
	if($row["Selected_Date"] > $canCancelUntil and $row["actual_selectdate"] == null)
			$cancelAvailable = 1;
		else
$cancelAvailable = 0;

	if($row["Selected_Date"] >= date("Y-m-d H:i:s") and $row["actual_selectdate"] == null)
			$pickupAvailable = 1;
		else
			$pickupAvailable = 0;
	
	if($row["actual_selectdate"] !== null && $row["actual_dropoffdate"] === null )
			$completeAvailable = 1;
		else
			$completeAvailable = 0;
		
		} else {
    echo "No current Reservation";
	echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/landing.php';\",5000);</script>";
}
?>

<?php if($cancelAvailable == 1){  ?>
	<button type="submit" name="cancel" value="cancel" >CANCEL</button>
<?php }  ?>


<?php if($pickupAvailable == 1){  ?>
	<button type="submit" name="pickup" value="pickup" >Pick Up Truck</button>
<?php }  ?>

<?php if($completeAvailable == 1){  ?>
	<button type="submit" name="complete" value="complete" >Complete Reservation</button>
<?php }  ?>

<br>



<?php
$conn->close();

?>
	 <br/>
	 <br/>
      </form>
    </div>
