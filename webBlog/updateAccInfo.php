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

    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $bDate = $_POST["bDate"];
    $gender = $_POST["gender"];
    $mPhone = $_POST["mPhone"];
    $email = $_POST["email"];
    $pass = $_POST["pass"];
    $id = $_GET['id'];
    
    $sql = "SELECT emp_password FROM accs_tbl where emp_uName = '$uName'";
    $result = $conn->query($sql);
            

      while($row = $result->fetch_array()){
        $checkPassword = $row['emp_password'];
    }
    if($pass == $checkPassword){
      if($gender != "null"){
        $sql = "UPDATE accs_tbl SET emp_fname = '$fname', emp_lname = '$lname',emp_bDate = '$bDate', emp_gender = '$gender', emp_mPhone = '$mPhone', emp_email='$email' WHERE id= '$id'";
        
        if($conn->query($sql)==true){
          
          echo "<script>alert('Updated Successfuly');window.location='accountSettings.php';</script>";
          
        }else{
          
          echo $conn->error;
          
        }
      }
      else{
        echo "<script>alert('Please Select Gender');</script>";
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

        <h1>Update Account</h1>

          <form method = "POST" enctype = "multipart/form-data">
            <input name = "fname" type = "text" placeholder = "First Name" value="<?=$_GET['fname']?>"  required>
            <input name = "lname" type = "text" placeholder = "Last Name"  value="<?=$_GET['lname']?>" required> <br>
                
            <label>Birthday :</label> <br>
            <input name = "bDate" type = "date" value="<?=$_GET['bDate']?>" required>
    
              <label>Gender :</label> <br>
              
                <select name = "gender"  required>
                  <option value = "null">Select Gender </option>
                  <option value = "M">Male</option>
                  <option value = "F">Female</option>
                </select> <br>
                
            <input name = "mPhone" type = "text" minlength = "11" maxlength="11" placeholder="Phone number" 
            value="<?=$_GET['mPhone']?>"  > <br>

            <input name="email" type="email" placeholder="Email Address" value="<?=$_GET['email']?>" required > <br>

            <input name = "pass" type = "password" placeholder = "Confirm Password to change" required> <br>

            <input class = "register" name = "regBtn" type = "submit" value = "Update">

          </form>
          <h6> <a href = "accountSettings.php"> Cancel </a> </h6>
      
      </div>

    </body>

</html>