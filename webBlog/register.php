<?php

  $host = "localhost";
  $username = "user";
  $password = "pass";
  $database = "signUp_db";

  $conn = new mysqli($host,$username,$password,$database);

  if($conn){
	
  }
  else{
    
    echo $conn->error;
    
  }
     
  if(isset($_POST["regBtn"])){
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $uName = $_POST["uName"];
    $pass = $_POST["pass"];
    $cPass = $_POST["cPass"];
    $bDate = $_POST["bDate"];
    $gender = $_POST["gender"];
    $mPhone = $_POST["mPhone"];
    $email = $_POST["email"];
    
    $sql = "SELECT emp_uName FROM accs_tbl WHERE emp_uName = '$uName'";
    $result = $conn->query($sql);

    if($row = $result->fetch_array()){
      echo "<script>alert('Username Already taken');window.location='register.php';</script>";
    }
    else{

      if($pass == $cPass){

        if($gender != "null"){
          $file_tmp = $_FILES['profile']['tmp_name'];
          $target_dir = "img/";
          $url = $target_dir.basename($_FILES["profile"]["name"]);			
          move_uploaded_file($file_tmp, $url);
      
          $sql = "INSERT INTO accs_tbl (emp_fname , emp_lname , emp_uName , emp_password ,  emp_bDate, emp_gender , emp_mphone , emp_email, emp_profile) 
          VALUES ('$fname', '$lname', '$uName', '$pass', '$bDate', '$gender', '$mPhone', '$email', '$url')";
          
          if($conn->query($sql)==true){
            
            echo "<script>alert('Registered Successfully');window.location='login.php';</script>";
            
          }
          else{
            
            echo $conn->error;
            
          }
    
        }
        else{
          echo "<script>alert('Please Select Gender');</script>";
        }
      }
      else{
        echo "<script>alert('Password Does Not Match');</script>";
      }
      
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

          
        <h1>Create an Account</h1>

        
          <form method = "POST" enctype = "multipart/form-data">
            <input name = "fname" type = "text" placeholder = "First Name" required>
            <input name = "lname" type = "text" placeholder = "Last Name" required> <br>


            <input name = "uName" type = "text" placeholder = "Username" required> <br> 


            <input name = "pass" type = "password" placeholder = "Password" required> <br>


            <input name = "cPass" type = "password" placeholder = "Confirm Password" required> <br>
                

            <label>Birthday :</label> <br>
            <input name = "bDate" type = "date"  required>
    
              <label>Gender :</label> <br>
              
                <select name = "gender" required>
                  <option value = "null">Select Gender </option>
                  <option value = "M">Male</option>
                  <option value = "F">Female</option>
                </select> <br>
                
            <input name = "mPhone" type = "text" minlength = "11" maxlength="11" placeholder="Phone number" > <br>

            <input name="email" type="email" placeholder="Email Address" required > <br>

            <label>Profile:</label>
            <img id="myImg" src="img/user.png">
            <input type="file" name="profile" id="uploadfile" >	
            
            <script  src="js/jquery.js"> </script>
            <script>
              /*File Upload*/
              $(document).ready(function(){
                $('#uploadfile').change(function(e){
                  if (this.files && this.files[0]) {
                    var img = document.querySelector('#myImg');  
                    img.src = URL.createObjectURL(this.files[0]);
                  } 
                });
              });
            </script>	

            <input class = "register" name = "regBtn" type = "submit" value = "Register">

          </form>
          <h6> Already have an account? <a href = "login.php"> Log-In </a> </h6>
      
      </div>

    </body>

</html>