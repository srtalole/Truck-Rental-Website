<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
$servername = "localhost";
$login = "root";
$password = "admin";
$dbname = "truckrental";


$conn = new mysqli($servername, $login, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);} 
if (isset($_POST["submit"])) {
if (empty($_POST["login"]) || empty($_POST["password"])) {
echo "Username or Password is invalid";
}
else
{
// Define $login and $password
$login= ($_POST["login"]);
$password1= ($_POST["password"]);
$_SESSION['login_user']=$login; 
$_SESSION['pwd']=$password1; 


// SQL query to fetch information of registerd users and finds user match.
$query = "select * from TRUCKRENTAL.CUSTOMER where Password='$password1' AND username='$login'";

$result1 = $conn->query($query);
			
			
if ($result1->num_rows > 0) {
	$row = $result1->fetch_assoc();
	
$_SESSION['cust_id']= $row['Customer_id'];

 echo "successfully logged in";
 echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/landing.php';\",1500);</script>";
 }
 else
 {
	 echo "invalid user name and password"; 
 }
	
}
}
		

?>