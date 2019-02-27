<form align="center" action="landing.php" method="post">


<?php
session_start();
$req=$_POST["Reason"];
$pd =$_POST["Pdate"];
$dd =$_POST["Ddate"];
$tid=$_POST["truckid"];

$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "truckrental";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);} 

$stmt="select max(Reservation_id) from reservation ";
$result = $conn->query($stmt);
$whatever= mysqli_fetch_row($result);
$max= $whatever[0] +1;


if (!mysqli_query($conn,"insert into reservation (reservation_id, selected_date, dropoff_date, truck_id, customer_id, load_description, cancel_status) values ($max,'$pd','$dd',$tid,".$_SESSION['cust_id'].",'$req',0)"))
{

echo("Error description: " . mysqli_error($conn));
}
else 
echo ("Booking confirmed. Your reservation id is :" . $max);
//echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/landing.php';\",9000);</script>";


mysqli_close($conn);

?>
<br><br><br><input type='submit' name='submit' value='Go Home'/>

