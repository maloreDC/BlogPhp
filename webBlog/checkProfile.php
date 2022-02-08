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

  $uName =  $_GET['emp_uName'];

?>

<html>

  <link rel="stylesheet" href="css/profile.css">
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

      <div class = "wrp0">
        <h1> <?php echo $uName ?>'s Profile </h1>

          <?php
            $sql = "SELECT * FROM accs_tbl WHERE emp_uName = '$uName'";
            $result = $conn->query($sql);
            

            while($row = $result->fetch_array()){
          ?>

          <img src="<?=$row['emp_profile']?>" alt="Smiley face" class = "profile">
          <div class = "profileWrp">
            <h3> Name: <?=$row['emp_fname'];?> <?=$row['emp_lname'];?> </h3>
            <h3> Gender: <?=$row['emp_gender'];?> </h3>
            <h3> Birthday: <?=$row['emp_bDate'];?>  </h3>
            <h3> Email: <?=$row['emp_email'];?>  </h3>
            <h3> Mobile Number: <?=$row['emp_mPhone'];?> </h3>

            
          </div>
          <?php
           }
          ?>
          <div class = "bioWrp">

            <?php
              $sql = "SELECT emp_bio FROM accs_tbl WHERE emp_uName = '$uName'";
              $result = $conn->query($sql);
              

              while($row = $result->fetch_array()){
            ?>

            <?php
              if($row['emp_bio'] != NULL){
            ?>
            <h3> <?=$row['emp_bio'];?> </h3>

            <?php
             }
              else{
            ?>
              <h3> LMAO No Bio </h3>

            <?php
             }
            }
            ?>

          </div>

        </div>
        
        
        
      <div>
        <?php

        $sql = "SELECT * FROM emp_post WHERE emp_uName = '$uName'  ORDER BY id DESC ";
        $result = $conn->query($sql);
          

        while($row = $result->fetch_array()){

        ?>


        <div class = "wrp1">

          <?php
          if($row['emp_pic'] != "img/"){
          ?>
            <h2 class = "username"> <?=$row['emp_uName'];?> </h2> <br>
            <p class = "post"> <?=$row['emp_write'];?> </p>  
            <img class = "imagePost" src="<?=$row['emp_pic']?>">
            <div class = "dateTime">

              <p> <?=$row['emp_dateTime']?>  </p>
              
            </div>
            
          <?php
            } 
            else{
          ?>

            <h2 class = "username"> <?=$row['emp_uName'];?> </h2> <br>
            <p class = "post"> <?=$row['emp_write'];?> </p> 
            <div class = "dateTime">

              <p> <?=$row['emp_dateTime']?>  </p>

            </div>
            
          <?php
            } 
          ?>

        </div>

        <?php
        }
        ?>
      </div>

    </div>      


  </body>

</html>