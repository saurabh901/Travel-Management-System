<?php
		// This script will handle login
		
	session_start();

include ('include/config.php');
include("header.php");	
if(isset($_POST['signin']))
{
$email=$_POST['email'];
$password=md5($_POST['password']);
$sql ="SELECT EmailId,Password FROM tblusers WHERE EmailId=:email and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['login']=$_POST['email'];
echo "<script type='text/javascript'> document.location = 'package-list.php'; </script>";
} else{
	
	echo "<script>alert('Invalid Details');</script>";

}

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
		<script>
  function login(){
  flag=true;

  var l=document.getElementById("email").value;
  var p=document.getElementById("pwd").value;
  
  document.getElementById("msg").innerHTML="";
  document.getElementById("msg1").innerHTML="";
  
  if(l.length<6){
  document.getElementById("msg").innerHTML="must be at least 6 charecters";
  flag=false;
  }
  

  if(p.length <6 ){
  document.getElementById("msg1").innerHTML="must be at least 6 characters";
  flag=false;
  }
  return flag;
}
</script>


	<style>
    
           .sign_in{padding:3%;
                height: auto;
                width: auto;;
                margin-top: 6%;
            }
            h1{
            	color: #000000;
                font-weight: bolder;
            }
            .img{
            	height: auto;
            	width: auto;
            }
            a{
            	color: white;
            }
      body{
         height: auto;
         width: auto;
        // background-image: url(images/login1.jpg);
        background-color: #808080;
        opacity: 0.7;

         
      }
        
        </style>
		</head>
		<body>
	                           <!-- Home --> 
							   
							    <br>

							<div class="sign_in">
		<h1 style="margin:30px;font-size:230%; text-align: center;"><b>***Login Here***</b></h1>
	      			<center>
	      				<div class="img">
							  <img src="images/2.jpg" style="height: 170px;,width: 200px;"></div></center><br>
						<center>
                   <form action="index.php" method="post">
				    <div class="form-group">
				    <label><b>Username</b></label>
					<input type="text" required="true" onkeyup="return login()" class="form-control" id="email" placeholder="Enter username" name="un"style="height: 30px; width: 250px;">
						<span id="msg"class="help-block"></span>
						</div>
					<div class="form-group">
					<label><b>Password</b></label>
					<input type="password" onkeyup="return login()" class="form-control" id="pwd" placeholder="Enter password" name="pwd"style="height: 30px; width: 250px;">
					<span id="msg"class="help-block"></span><br/>
							</div>
						<div class="form-group">
                    <button type="submit"onsubmit="return login()" class="btn btn-default" value="Sign in" required="true" style="height: 30px; width: 130px; background-color: blue; color: white; padding: 1px; ">Sign in</button>
							  </div>
                    <input type="checkbox"/> &nbsp;&nbsp;<b>Stay sign in</b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                        <a href="#" ><b> Need help ?</b></a></br></br>
                    	<a href="forgot-password.php"><b>Forget Passsword ?</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<a href="signup.php"><b>Create an account !</b></a>
			 </form> 
             </center>  
			   </div>
	<!-- Footer -->

	<?php include('footer.php');?>


</body>

</html>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/offers_custom.js"></script>

