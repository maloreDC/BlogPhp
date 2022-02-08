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

?>

<html>

  <link rel = "stylesheet" href = "css/accountSettings.css">
  <head>
    <title>Blog Posting</title>
  </head>

  <body>

    <div class = "Nav_Bar">

      <ul class = "navBar">

        <li> <a class = "nav" href = "home.php"> Home </a> </li>
        <li> <a class = "nav"> About </a> </li>
        <li> <a class = "logout" href = "logout.php"> Log-Out </a> </li>

      </ul>

    </div>

    <div class = "mainPanel">
      <h1> Account Settings </h1>

      <?php
			$sql = "SELECT * FROM accs_tbl WHERE emp_uName = '$uName'";
      $result = $conn->query($sql);
      

			while($row = $result->fetch_array()){
		  ?>
        <a href = "updateAccInfo.php?id=<?=$row['id'];?>&url=<?=$row['emp_profile'];?>&fname=<?=$row['emp_fname'];?>&lname=<?=$row['emp_lname'];?>&mPhone=<?=$row['emp_mPhone'];?>&email=<?=$row['emp_email'];?>&bDate=<?=$row['emp_bDate'];?>&gender=<?=$row['emp_gender'];?>"> 
          <input  class = "update" name  = "accInfoBtn" value = "Update Account Info" type = "button"> 
        </a>

      <?php
        }
      ?>

      <a href = "updateBio.php?id=<?=$row['id'];?>"> 
        <input  class = "update" name  = "bioBtn" value = "Update Bio" type = "button"> 
      </a>

      <a href = "updatePass.php"> 
        <input  class = "update" name  = "passBtn" value = "Change Password" type = "button"> 
      </a>

      <a href = "updateProfilePic.php?id=<?=$row['id'];?>"> 
        <input  class = "update" name  = "passBtn" value = "Update Profile Picture" type = "button"> 
      </a>
      
    </div>    

  </body>
</html>