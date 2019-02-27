<?php

$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "truckrental";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);} 

$cn=$_POST["cardnumber"];
$eday =$_POST["day"];
$emon =$_POST["month"];
$eyear=$_POST["year"];
$cvv=$_POST["cvv"];



$stmt="select max(Reg_id) from regular ";
$result = $conn->query($stmt);
$whatever= mysqli_fetch_row($result);
$max= $whatever[0] +1;

if (!mysqli_query($conn,"INSERT INTO truckrental.creditcard(card_no, Cvv, eyear, emonth, eday) values ('$cn', $cvv,$eyear,$emon,$eday)"))	
{
echo("Error description: " . mysqli_error($conn));
}
else {
echo ("Payment successfull.");
echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/ratingpage.php';\",5000);</script>";
}

mysqli_close($conn);
?>
