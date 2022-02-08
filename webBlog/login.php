<?php 

  $host = "localhost";
  $username = "user";
  $password = "pass";
  $database = "signUp_db";

  $conn = new mysqli($host, $username, $password, $database);

  if($conn){
  
  }
  else{

    echo $conn->error;

  }

  if(isset($_POST["logBtn"])){

    $uName = $_POST["uName"];
    $pass = $_POST["pass"];
    
    $sql = "SELECT id FROM accs_tbl WHERE emp_uName = '$uName' and emp_password = '$pass'";
    $result = $conn->query($sql);
    
    if($check = $result->fetch_array()){
      session_start();
      $_SESSION['uName'] = $uName;
      echo "<script> alert('Welcome $uName!'); window.location='home.php'; </script>";
    
    }
    else{
      echo "<script> alert('Invalid Username or Password'); window.location='login.php'; </script>";
    } 

  }

?>

<html>
  <link rel="stylesheet" href="css/login.css"> 
  <head>

    <title>Blog Posting</title>

  </head>

  <body>
    <div class = "logPanel">
      <h1>Log-In</h1>

      <form method = "POST">
      
        <input name="uName" placeholder="Username" type = "text">
        <input name="pass" placeholder="Password" type = "password">
        <input class = "login" name ="logBtn" value="Log-In" type="submit"><br>
        <h6> Don't have an account? <a href = "register.php"> Sign-Up </a> </h6>
        <h6> <a href = "forgotPass.php"> Forgot Password? </a> </h6>
        
      </form>
    </div>
  </body>
</html>