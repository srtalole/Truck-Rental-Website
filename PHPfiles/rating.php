

<?php
	 
	 session_start();
$fbk=$_POST["quality"];
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

      $stmt1 = "select * from invoice where Reservation_id=".$_SESSION['reservationId'];
			
			
			$result1 = $conn->query($stmt1);
			if ($result1->num_rows > 0) {
			$row = $result1->fetch_assoc();
			$_SESSION['invoice_no']=  $row['Invoice_no']; }
			
				if (!mysqli_query($conn,"insert into rating(Feedback, Invoice_no) values ('$fbk','".$_SESSION['invoice_no']."')"))
				
		
{
echo("Error description: " . mysqli_error($conn));
}
else
{
	echo "We will value your feedback. Please visit us again!!";
	echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/Homee.php';\",9000);</script>";
}
?>

