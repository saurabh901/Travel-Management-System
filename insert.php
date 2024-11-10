<?php
include ('login/connection.php');
$id= $_POST['id'];
$username= $_POST['username'];
$password= $_POST['password'];
$created_at= $_post['created_at'];

$sql = "INSERT INTO users(id,username,password,created_at)
VALUES ('$id', '$username','$password','$created_at');";
$run=mysqli_query($conn,$sql);

if($run){
    echo "New record created successfully";
	} else {
    echo "Error: in insert data";
}
?>
<br>
<a href="signup.php">Add More Data</a><br>
<a href="index.php">View Data</a>