<!DOCTYPE html>
<html>
<title>Check Availability</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.myLink {display: none}
</style>
<body class="w3-light-grey">

<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-border-bottom w3-xlarge">
  <a href="#" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b><i class="w3-margin-right"></i>Raptor Truck Rental</b></a>

</div>


<form align="center" action="goforbooking.php" method="post">
		<h1> BOOK A TRUCK </h1><br><br>
<font size="+1">I need a Truck for</font> <input type="text" name="Reason"/><br><br>
<font size="+1">Pick-up  Date     </font><input type="datetime-local" name="Pdate"/><br><br>
<font size="+1">Drop-off Date     </font> <input type="datetime-local" name="Ddate"/><br><br>
<?php

$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "truckrental";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);} 
$stmt="select * from truck where available=1;";
$result = $conn->query($stmt);
$rowcount=mysqli_num_rows($result);
$trucknumber=array($rowcount);
//echo "  <div style="width:300px; float:right;"></div>"
echo"<table border='1'align=center>";

echo "<tr><td>Model</td><td>Year</td><td>Dimensions</td><td>BaseRate</td><td>Book</td></tr>";
    while($row = $result->fetch_assoc()) {
		echo"<tr><td>{$row['Model']}</td><td>{$row['year']}</td><td>{$row['Dimension']}</td><td>{$row['BaseRate']}</td><td><input type='radio' name='truckid'  value='{$row['Truck_id']}'></td></tr>";
}
echo"</table>";
?>
<input type='submit' name='submit' value='Submit'/>
</body>
</html>



