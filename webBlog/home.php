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

  if(isset($_POST["postBtn"])){

    $post = $_POST["write"];
    $file_tmp = $_FILES['profile']['tmp_name'];
    $target_dir = "img/";
    $url = $target_dir.basename($_FILES["profile"]["name"]);			
    move_uploaded_file($file_tmp, $url);

    $sql = "INSERT INTO emp_post (emp_dateTime, emp_write, emp_pic, emp_uName) VALUES (current_timestamp(), '$post', '$url','$uName')";

    if($conn->query($sql)==true){
    
      echo "<script>window.location='home.php';</script>";
      
    }else{
      
      echo $conn->error;
      
    }

  }

?>


<html>

  <link rel="stylesheet" href="css/home.css">
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

    <div class = "mainPanel1">

      <?php
        $sql = "SELECT emp_profile FROM accs_tbl WHERE emp_uName = '$uName' ";
        $result = $conn->query($sql);
        

        while($row = $result->fetch_array()){
      ?>
      <img src="<?=$row['emp_profile']?>" alt="Smiley face" class = "profile">

      <?php 
        }
      ?>

      <div class = "tabBar">
        <a class="profileBtn" href = "profile.php">Profile</a> <br>
        <a class="accBtn" href = "accountSettings.php">Account Settings</a> <br>
      </div>

    </div>

    <div class = "mainPanel">

      <h1>Hello <?php echo $uName ?>! </h1>
      
      <div class = "formWrp">

        <form method = "POST" enctype="multipart/form-data">

          <textarea name = "write" type = "text" placeholder = "Write Something" row = "50" col = "50" maxlength = "140" required></textarea>

          
          <input class = "upload" type="file" name="profile" id="uploadfile">	

          <script  src="js/jquery.js"></script>
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
    	
          <input class = "share" name = "postBtn" type = "submit" value = "Share">

        </form>

      </div>

      

      <?php

        $sql = "SELECT * FROM emp_post  ORDER BY id DESC ";
        $result = $conn->query($sql);
          

        while($row = $result->fetch_array()){

      ?>
        
        <div class = "wrp1">

        <?php
          if($row['emp_pic'] != "img/"){
          ?>
          <a class = "post" href="checkProfile.php?emp_uName=<?=$row['emp_uName'];?>">
            <h2 class = "username"> <?=$row['emp_uName'];?> </h2> <br>
          </a>
          <a class = "post" href = "viewPost.php?id=<?=$row['id'];?>"> 
            <p class = "post"> <?=$row['emp_write'];?> </p>  
            <img class = "imagePost" src="<?=$row['emp_pic']?>">
            <div class = "dateTime">

              <p> <?=$row['emp_dateTime']?>  </p>
              
            </div>
          </a>
          <?php
            } 
            else{
          ?>

          <a class = "post" href="checkProfile.php?emp_uName=<?=$row['emp_uName'];?>">
            <h2 class = "username"> <?=$row['emp_uName'];?> </h2> <br>
          </a>
          <a class = "post" href = "viewPost.php?id=<?=$row['id'];?>"> 
            <p class = "post"> <?=$row['emp_write'];?> </p> 
            <div class = "dateTime">

              <p> <?=$row['emp_dateTime']?>  </p>

            </div>
          </a>

          
          
        <?php
          } 
        ?>

      </div>

      <?php
        }
      ?>

    </div>
      
    <div class = "mainPanel2">

    

    </div>

  </body>

</html>