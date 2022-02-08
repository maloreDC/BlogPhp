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
  $comment  = $_POST['Comment'];
  $id =  $_POST['ID'];

  $sql = "INSERT INTO emp_comment (emp_datetime, emp_comment, emp_uName, postId) VALUES (current_timestamp(), '$comment', '$uName','$id')";
  $result =$conn->query($sql);

  $sql = "SELECT * FROM emp_comment WHERE postId = '$id' ORDER BY emp_datetime DESC ";
    
    $result =$conn->query($sql);
    $row = $result->fetch_array();

?>

<div class = "wrp1">

    <h2 class = "username"> <?=$row['emp_uName'];?> </h2> <br>
    <p class = "post"> <?=$row['emp_comment'];?> </p> 
    <div class = "dateTime">

     <p> <?=$row['emp_datetime']?>  </p>
            
    </div>
  </div>