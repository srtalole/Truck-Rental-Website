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
  <section class="container">
    <div class="login">
     
	  <td class = "title" style="position: fixed; top: 100px; right: 10000px; width: 100%; text-align:center;">
	   <h1><center>INVOICE</h1></td><br><br><br>
	  
			
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
<div class="panel panel-default">
			  <div class="panel-body">
			  		<div class="row">
                            <div class="col-md-6">
                                
<?php
			
            $stmt1 = "select * from customer_invoice where Reservation_No=".$_SESSION['reservationId'];
			
			
			$result1 = $conn->query($stmt1);
			if ($result1->num_rows > 0) {
			$row1 = $result1->fetch_assoc();
			
			echo "<div> <b>Name:</b> " . $row1["Name"]."</div>";
			echo "<div> <b>Email:</b> " . $row1["email"]."</div><br><br><br>";
			if(mysqli_query($conn, $stmt1))
				{
				echo "<table border='1'>
				<tr>
				<th><b>Reservation Number</th>
				<th><b>Truck model</th>
				<th>Start date</th>
				<th>End date</th>
				<th>Base price/hour</th>
				<th>Total Hours</th>
				<th>Total Price</th></b>
				</tr>";
								echo "<tr>";
								echo "<td>" . $row1['Reservation_No'] . "</td>";
								echo "<td>" . $row1['Truckmodel'] . "</td>";
								echo "<td>" . $row1['startdate'] . "</td>";
								echo "<td>" . $row1['enddate'] . "</td>";
								echo "<td>" . $row1['baseprice'] . "</td>";
								echo "<td>" . $row1['No_of_hours'] . "</td>";
								echo "<td>" . $row1['Total'] ."$". "</td>";
								echo "</tr>";
				
								echo "</table><br><br><br><br>";


			}
			}
			else
			{ 
			echo "Technical error";
						
			}					
?>	
 	
				
                                      
<?php
$invoiceno = "";
			$stmt2 = "select invoice_no from invoice where reservation_id =".$_SESSION['reservationId'];
			$result2 = $conn->query($stmt2);
			if ($result2->num_rows > 0) {
			$row2 = $result2->fetch_assoc();
			$invoiceno= $row2["invoice_no"];
			}
			
				
?>





<?php
$stmt3 = "select * from customer where customer_id = ".$_SESSION['cust_id'];
$result3 = $conn->query($stmt3);
			if ($result3->num_rows > 0) {
			$row3 = $result3->fetch_assoc();
			
if($row3["customer_type"] == 'Corporate')
			$paymentsuccess = 1;
		else
			$paymentsuccess = 0;
if($paymentsuccess == 1){  
?>
<form align="center" action="ratingpage.php" method="post">
PAYMENT PROCESSED TO YOUR CORPORATE ACCOUNT <br><br>
<button type="submit" name="Rate" value="Rate" >Rate your Experience</button>
</form>
<?php }
else
{
?>
<form align="center" action="Payment.php" method="post">

<button type="submit" name="Paymentoptions" value="paymentoptions" >Payment Options</button><br><br>
</form>

<?php } }  ?>

<body>
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
						<div>
							<td style="position: fixed; top: 100px; right: -600px; width: 1000px; text-align:rightwards;">
							<br><br><br><br><span class="text-dark"><b>Created Date:</b></span>
                                        <span class="value"> <?php 
								print($row1["enddate"]);?></span><br>
							<span class="text-dark"><b>Invoice Number:</b></span>
                                        <span class="value"> <?php 
								print($invoiceno);?></span><br>
							</td>
							</div>
                           
							
						
							
                            
                        </tr>
                    </table>
                </td>
            </tr>

</div>
	</div>
		</div>
			</div>
				</div>
					</div>
						
							

							