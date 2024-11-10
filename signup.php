<?php
// Include config file

include('header.php');
include ('include/config.php');
 
// Define variables and initialize with empty values

error_reporting(0);
if(isset($_POST['submit']))
{
$fname=$_POST['fname'];
$mnumber=$_POST['mobilenumber'];
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql="INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mnumber',$mnumber,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$_SESSION['msg']="You are Scuccessfully registered. Now you can login ";
header('location:thankyou.php');
}
else 
{
$_SESSION['msg']="Something went wrong. Please try again.";
header('location:thankyou.php');
}
}
?>
<!--Javascript for check email availabilty-->
<script>
function checkAvailability() {

$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
<br><br><br><br><br><br><br><br><br><br>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 500px; padding: 20px;text-align:; }
		.input
{
height:40px;
width:500px;
padding:7px;
margin:10px;
}
.button
{
height:40px;
width:80px;
}
    </style>
</head>
<body>
    <div class="wrapper"style="">
        <h2><b>Sign Up To Create Your Account</b></h2>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Full Name</label>
                <input type="text" name="fullname" class="form-control"  required="" value="<?php echo $fname; ?>">
                <span class="help-block"><?php echo $fullname_err; ?></span>
            </div>    
            <div class="form-group">
                <label>Mobile No.</label><br>
                <input type="text" value="" placeholder="" maxlength="10" name="mobilenumber" autocomplete="off" required=""style="height:30px;width:460px;font-size:14px;">
                <span class="help-block"></span>
            </div>
            <div class="form-group <?php echo $email; ?>">
                <label>E-mail Id</label><br>
                <input type="text" value="" placeholder="Email id" name="email" id="email" onBlur="checkAvailability()" autocomplete="off"  required=""style="height:30px;width:460px;font-size:14px;">
                <span id="user-availability-status" style="font-size:12px;"></span> 
            </div>
			 <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Password</label><br>
                <input type="password" name="password" class="form-control" value="<?php echo $password; ?>">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" name="submit" id="submit" class="btn btn-primary" value="Submit"style="height:30px;width:80px;font-size:14px;">
                <input type="reset" class="btn btn-default" value="Reset"style="height:30px;width:50px;font-size:14px;">
            </div>
			<div class="clearfix"></div>		
			<p>By logging in you agree to our <a href="page.php?type=terms">Terms and Conditions</a></p>
            <p>Already have an account?  <a href="login.php">&nbsp&nbsp&nbsp&nbsp Login here</a>.</p>
			
        </form></center>
    </div>    
</body>
</html>


	<br><br><br>

	<!-- Footer -->

<?php include('footer.php');?>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact_custom.js"></script>



