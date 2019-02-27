<?php


$firstname=$_POST["firstname"];
$lastname =$_POST["lastname"];
$Email =$_POST["Email"];
$phone_number=$_POST["phone_number"];
$driverslicense=$_POST["driverslicense"];
$radtype=$_POST["cust_type"];
$password1=$_POST["password"];
$Username=$_POST["Username"];

$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "truckrental";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);} 

$stmt="select max(Customer_id) from customer ";
$result = $conn->query($stmt);
$whatever= mysqli_fetch_row($result);
$max= $whatever[0] +1;


$cid= ($_POST["cmp_id"]);
$cname= ($_POST["cmp_name"]);
$_SESSION['compid']=$cid;

if ($radtype == 'Corporate'){
$query= "select * from corporateaccount where Comp_id= $cid AND company_name='$cname'";
$result1 = $conn->query($query);
		
			
if ($result1->num_rows == 0	) {

echo "No such company exists";
echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/signup.php';\",3000);</script>";
 }
 else {
	 $stmt1= "insert into customer (Customer_id, First_name,Last_name,Email,Mobile,Customer_type,License_no,Password,username) values ($max,'$firstname','$lastname','$Email',$phone_number,'$radtype',$driverslicense,'$password1','$Username')";
	$stmt2= "update corporate set comp_id =".$_SESSION['compid'];
	
if (!mysqli_query($conn,$stmt1))
{
echo("Error description: " . mysqli_error($conn));
}
else 
{
	
if (mysqli_query($conn, $stmt2))
{	
echo ("Records added.");	
echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/login.php';\",5000);</script>";
}

	 
}
 }
} 
else{

	$stmt3= "insert into customer (Customer_id, First_name,Last_name,Email,Mobile,Customer_type,License_no,Password,username) values ($max,'$firstname','$lastname','$Email',$phone_number,'$radtype',$driverslicense,'$password1','$Username')";
	
	
if (!mysqli_query($conn,$stmt3))
{
echo("Error description: " . mysqli_error($conn));
}
else 
{

echo ("Records added.");	
echo "<script>setTimeout(\"location.href = 'http://localhost/truckrentalwebsite/login.php';\",5000);</script>";
}

}
	

mysqli_close($conn);

?>
