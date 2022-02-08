<?php 

  $host = "localhost";
  $username = "user";
  $password = "pass";
  $database = "signUp_db";

  $conn = new mysqli($host, $username, $password, $database);


  if(isset($_POST["regBtn"])){
    $uName = $_POST["uName"];
    $email = $_POST["email"];
    $pass = $_POST["pass"];
    $cPass = $_POST["cPass"];
    
    $sql = " SELECT emp_uName, emp_email FROM accs_tbl WHERE emp_uName = '$uName' AND emp_email = '$email'";

    $result = $conn->query($sql);

    if(mysqli_num_rows($result) > 0){

     while($row = $result->fetch_array()){
      $checkuname = $row['emp_uName'];
      $checkEmail = $row['emp_email'];
    

      if($pass == $cPass){

        $sql = "UPDATE accs_tbl SET emp_password = '$pass' WHERE emp_uName = '$uName' AND emp_email = '$email' ";

        if($conn->query($sql)==true){
            
          echo "<script>alert('Recovered Successfuly');window.location='login.php';</script>";
            
        }else{
            
          echo $conn->error;
            
        }
      }
      else{
        echo "<script>alert('Password Does Not Match');</script>";
      }
      
     }
    }else{
      echo "<script>alert('Wrong Username or Email');</script>";
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
             
            <input name = "uName" type = "text" placeholder = "Username" required> <br>
            <h3> or </h3>
            <input name = "email" type = "email" placeholder = "Email" > <br>

            <input name = "pass" type = "password" placeholder = "New Password" required> <br>

            <input name = "cPass" type = "password" placeholder = "Confirm Password" required> <br>
                
            <input class = "register" name = "regBtn" type = "submit" value = "Update">

          </form>

          <a href = "accountSettings.php"> Cancel </a>


           
      </div>

    </body>

</html>