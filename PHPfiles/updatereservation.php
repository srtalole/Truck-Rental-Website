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

    if (isset($_GET['cancel'])) {
		$stmt = "Update truckrental.reservation set cancel_status = 1 where reservation_id = ".$_SESSION['reservationId'];
		
	if(mysqli_query($conn, $stmt)){
    echo "Your reservation is Canceled successfully.";
	echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/landing.php';\",5000);</script>";
	} else{
    echo "ERROR: Could not able to execute $stmt. " . mysqli_error($conn);
		
    }
	}
    elseif (isset($_GET['pickup'])) {
       $stmt2 = "Update truckrental.reservation set actual_selectdate = now()where reservation_id = ".$_SESSION['reservationId'];
	   if(mysqli_query($conn, $stmt2)){
	   echo "Thank you. Enjoy your ride!!!";
	   echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/landing.php';\",5000);</script>";
    }
	}
    elseif (isset($_GET['complete'])) {
    if(mysqli_query($conn, "call insert_invoice(".$_SESSION['reservationId'].")")){
	echo "drop0ff_date is successfully updated and invoice is generated";
	echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/Invoice.php';\",5000);</script>";
	}
	else
		echo "Failed";
	}
	   
	   
	  

		
$conn->close();
?>

