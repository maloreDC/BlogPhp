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

  if(isset($_POST["regBtn"])){
    $uName = $_SESSION['uName'];
    $confirmPass = $_POST['oldPass'];
    $pass = $_POST["pass"];
    $cPass = $_POST["cPass"];
    
    $sql = "SELECT emp_password FROM accs_tbl WHERE emp_uName = '$uName'";
    $result = $conn->query($sql);
      
    while($row = $result->fetch_array()){
      $oldPass = $row['emp_password'];
    }
    
    if($oldPass == $confirmPass){
      if($pass == $cPass){
          $sql = "UPDATE accs_tbl SET emp_password = '$pass' WHERE emp_uName = '$uName'";
  
        if($conn->query($sql)==true){
            
          echo "<script>alert('Updated Successfuly');window.location='accountSettings.php';</script>";
            
        }else{
            
          echo $conn->error;
            
        }
      }
      else{
        echo "<script>alert('Password Does Not Match');window.location='updatePass.php';</script>";
      }
    }
    else{
      echo "<script>alert('Wrong Password');window.location='updatePass.php';</script>";
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

        <h1>Update Password</h1>

          <form method = "POST" enctype = "multipart/form-data">

           <input name = "oldPass" type = "password" placeholder = "Old Password" required> <br>

            <input name = "pass" type = "password" placeholder = "New Password" required> <br>

            <input name = "cPass" type = "password" placeholder = "Confirm Password" required> <br>
                
            <input class = "register" name = "regBtn" type = "submit" value = "Update">

          </form>

          <a href = "accountSettings.php"> Cancel </a>


           
      </div>

    </body>

</html>