<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
$gid=intval($_GET['gid']);	
if(isset($_POST['submit']))
{
$gname=$_POST['FullName'];
$gmnumber=$_POST['MobileNumber'];	
$geid=$_POST['EmailId'];
$gaddress=$_POST['Address'];	
$gsa=$_POST['ServiceArea'];
$gdetails=$_POST['guidedetails'];	
$gimage=$_FILES["guideimage"]["name"];
$sql="update tblguide set FullName=:gname,MobileNumber=:gmnumber,EmailId=:geid,Address=:gaddress,ServiceArea=:gsa,guidedetails=:gdetails where id=:gid";
$query = $dbh->prepare($sql);
$query->bindParam(':gname',$gname,PDO::PARAM_STR);
$query->bindParam(':gmnumber',$mnumber,PDO::PARAM_STR);
$query->bindParam(':geid',$geid,PDO::PARAM_STR);
$query->bindParam(':gaddress',$address,PDO::PARAM_STR);
$query->bindParam(':gsa',$gsa,PDO::PARAM_STR);
$query->bindParam(':gdetails',$gdetails,PDO::PARAM_STR);
$query->bindParam(':gimage',$gimage,PDO::PARAM_STR);
$query->bindParam(':gid',$gid,PDO::PARAM_STR);
$query->execute();
$msg="Guide Updated Successfully";
}

	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Travel | Admin guide updation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery-2.1.4.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>

</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
              <!--header start here-->
<?php include('includes/header.php');?>
							
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
	<ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a><i class="fa fa-angle-right"></i>Update Guide </li>
            </ol>
		<!--grid-->
 	<div class="grid-form">
 
<!---->
  <div class="grid-form1">
  	       <h3>Update Guide</h3>
  	        	  <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
  	         <div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">
						
<?php 
$gid=intval($_GET['gid']);
$sql = "SELECT * from tblguide  where  id=:gid";
$query = $dbh -> prepare($sql);
$query -> bindParam(':gid', $gid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

							<form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Full Name</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="fullname" id="fullname" placeholder="Create Package" value="<?php echo htmlentities($result->FullName);?>" required>
									</div>
								</div>
<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Mobile Number</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="mobilenumber" id="mobilenumber" placeholder=" mobile number" value="<?php echo htmlentities($result->MobileNumber);?>" required>
									</div>
								</div>

<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Email Id</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="emailid" id="emailid" placeholder=" email id" value="<?php echo htmlentities($result->EmailId);?>" required>
									</div>
								</div>

<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Address </label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="address" id="address" placeholder=" Address " value="<?php echo htmlentities($result->Address);?>" required>
									</div>
								</div>

<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Service Area</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="servicearea" id="servicearea" placeholder="Service Area Eg-zoo, bairaj etc..." value="<?php echo htmlentities($result->ServiceArea);?>" required>
									</div>
								</div>		


<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Guide Details</label>
									<div class="col-sm-8">
										<textarea class="form-control" rows="5" cols="50" name="guidedetails" id="guidedetails" placeholder="Guide Details" required><?php echo htmlentities($result->guidedetails);?></textarea> 
									</div>
								</div>															
<div class="form-group">
<label for="focusedinput" class="col-sm-2 control-label">Guide Image</label>
<div class="col-sm-8">
<img src="pacakgeimages/"<?php echo htmlentities($result->guideimage);?>" width="200">&nbsp;&nbsp;&nbsp;<a href="change-guideimage.php?imgid=<?php echo htmlentities($result->id);?>">Change Image</a>
</div>
</div>

<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Last Updation Date</label>
									<div class="col-sm-8">
<?php echo htmlentities($result->UpdationDate);?>
									</div>
								</div>		
								<?php }} ?>

								<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<button type="submit" name="submit" class="btn-primary btn">Update</button>
			</div>
		</div>
						
					
						
						
						
					</div>
					
					</form>

     
      

      
      <div class="panel-footer">
		
	 </div>
    </form>
  </div>
 	</div>
 	<!--//grid-->

<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">

</div>
<!--inner block end here-->
<!--copy rights start here-->
<?php include('includes/footer.php');?>
<!--COPY rights end here-->
</div>
</div>
  <!--//content-inner-->
		<!--/sidebar-menu-->
					<?php include('includes/sidebarmenu.php');?>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   

</body>
</html>
<?php } ?>