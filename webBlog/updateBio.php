<?php

  $host = "localhost";
  $username = "user";
  $password = "pass";
  $database = "signUp_db";

  $conn = new mysqli($host,$username,$password,$database);

  if($conn){
    
    
    
    
  }else{
    
    echo $conn->error;
    
  }

  session_start();
  if(!isset($_SESSION['uName'])){

    header("Location: login.php");

  }

  $uName = $_SESSION['uName'];

  if(isset($_POST["regBtn"])){

    $bio = $_POST["bio"];
    $pass = $_POST["pass"];
    $id = $_GET['id'];
    
    $sql = "SELECT emp_password FROM accs_tbl where emp_uName = '$uName'";
    $result = $conn->query($sql);
            

      while($row = $result->fetch_array()){
        $checkPassword = $row['emp_password'];
    }
    if($pass == $checkPassword){
        $sql = "UPDATE accs_tbl SET emp_bio = '$bio' WHERE emp_uName = '$uName'";
        
        if($conn->query($sql)==true){
          
          echo "<script>alert('Updated Successfuly');window.location='accountSettings.php';</script>";
          
        }else{
          
          echo $conn->error;
          
        }
    }
    else{
      echo "<script>alert('Wrong Password');</script>";
    }
    
  }

?>

<html>

   <link rel="stylesheet" href="css/register.css"> 
    <head>
       
      <title>Blog Posting</title>

    </head>

    <body>
    
      <div class = "regPanel">

        <h1>Update Bio</h1>

          <form method = "POST" >

            <input name="bio" type="text" placeholder="Place new bio here" required> <br>

            <input name = "pass" type = "password" placeholder = "Confirm Password to change" required> <br>

            <input class = "register" name = "regBtn" type = "submit" value = "Update">

          </form>
          <h6> <a href = "accountSettings.php"> Cancel </a> </h6>
      
      </div>

    </body>

</html>