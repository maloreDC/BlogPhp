<?php 

  $host = "localhost";
  $username = "user";
  $password = "pass";
  $database = "signUp_db";

  $conn = new mysqli($host, $username, $password, $database);

  session_start();
  if(!isset($_SESSION['uName'])){

    header("Location: login.php");

  }

  $uName = $_SESSION['uName'];
  $id =  $_POST['ID'];

  $unlikePost = "DELETE FROM emp_like WHERE emp_uName = '$uName' and postid = '$id'";
	$conn->query($unlikePost);

?>