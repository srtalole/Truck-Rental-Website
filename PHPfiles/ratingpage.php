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

<div class="imagebg"></div>
<div class="row " style="margin-top: 50px">
    <div class="col-md-6 col-md-offset-3 form-container">
        <h2><center>Feedback</h2>
        <p>
            Please provide your feedback below:
        </p>
<form align="center" action="rating.php" method="post">
  <input type="radio" name="quality" value="Good"> Good<br>
  <input type="radio" name="quality" value="Average"> Average<br>
  <input type="radio" name="quality" value="Bad"> Bad<br><br><br>
<input type='submit' name="submit" value="Submit"/>
            

        </form>