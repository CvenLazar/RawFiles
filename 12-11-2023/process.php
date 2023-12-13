<?php
session_start();

// form data received

$username = $_REQUEST['username'];
$password = md5($_REQUEST['password']);

include('dbconnect2.php');

$sql = "select * from admin where username=:username";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(":username",$username);
$stmt->execute();

if($stmt->rowCount()>0){

	$row = $stmt->fetch();
	if($row['password']==$password){
		
		$_SESSION['aid'] = $row['aid'];
		$_SESSION['admin_id'] = $username;
		$_SESSION['aname']  = $row['aname'];
		header("location:admin_dashboard.php");

	}else{
		$_SESSION['error'] = "Wrong Password";
		header("location:dashboard.php");
	}

}else
{
	$_SESSION['error'] = "Wrong User ID";
	header("location:dashboard.php");
}
?>
