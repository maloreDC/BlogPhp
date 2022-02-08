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
  $id = $_GET['id'];

?>

<html>

  <link rel="stylesheet" href="css/viewPost.css">
  <head>
    <title>Blog Posting</title>
  </head>

  <body onload="Display()">

    <div class = "Nav_Bar">

      <ul class = "navBar">

        <li> <a class = "nav" href = "home.php"> Home </a> </li>
        <li> <a class = "nav"> About </a> </li>
        <li> <a class = "logout" href = "logout.php"> Log-Out </a> </li>

      </ul>

    </div>

    <div class = "mainPanel">
      
      <?php

        $sql = "SELECT * FROM emp_post  WHERE id = '$id' ";
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
        
        <div class='like'>
          <button class='like-toggle basic' id="like" onclick="like()">Like</button>
          <script  src="js/jquery.js"></script>
          <script>
          $(function(){
            $('.like-toggle').click(function(){
              $(this).toggleClass('like-active');
            });
          });
          </script>

          <script>
            function like(){
              var id = "<?=$row['id']?>";
              $.ajax({
                method:"POST",
                url:"ajaxLike.php",
                data:{
                  ID: id
                },
                success:function(result) {
                  $('#like').prop('disabled', true);
                  $('#dislike').prop('disabled', false);
                  $("#liked").replaceAll(result);
                }
              });
            }
          </script>

          <button class='unlike-toggle basic' id="dislike" onclick="unlike()" disabled>Like'nt</button>
          <script  src="js/jquery.js"></script>
          <script>
          $(function(){
            $('.unlike-toggle').click(function(){
              $(this).toggleClass('unlike-active');
            });
          });
          </script>

          <script>
            function unlike(){
              var id = "<?=$row['id']?>";
              $.ajax({
                method:"POST",
                url:"ajaxUnLike.php",
                data:{
                  ID: id
                },
                success:function(result) {
                  $('#dislike').prop('disabled', true);
                  $('#like').prop('disabled', false);
                  $("#liked").replaceAll(result);
                }
              });
            }
          </script>

            <?php
							$countLike = "SELECT COUNT(id) FROM emp_like WHERE postid='$id'";
							$resultCount = $conn -> query($countLike);
							while($row = $resultCount -> fetch_array()){
						?>
				
								<p><?=$row['COUNT(id)'];?></p>
							
							
						<?php
							}
						?>

        </div>

      </div>

      <div class = "wrp2">
        <script  src="js/jquery.js"></script>

        <form method = "POST">
          
          <textarea class = "comment" id="comment" name = "addC" type = "text" placeholder = "Add a comment" row = "1" col = "50" maxlength = "140" required></textarea>

           <input id = "onClickR" class = "comment" onclick = "Submit()" name = "commentBtn" type = "button" value = "Reply">

           <script>
            $("#btnClear").click(function() {
              $("#CommentBox").val('');
            });
           </script>
            
        </form>

        <script>
          function Submit(){
            var comment = document.getElementById("comment").value;
            var id = "<?=$row['id']?>";
            $.ajax({
              method:"POST",
              url:"ajaxComment.php",
              data:{
                Comment:comment,
                ID: id
              },
              success:function(result) {
                $("#comment").val('');
                $("#output").prepend(result);
                
              }
            });
          }
        </script>

      </div>
      
      <script>
          function Display(){

            var id = "<?=$row['id']?>";
            $.ajax({
              method:"POST",
              url:"ajaxDispComment.php",
              data:{
                ID: id
              },
              success:function(result) {
                $("#commentSection").prepend(result);
              }
            });
          }
        </script>

        <div class = "wrp3">

          <div id = "output"> </div>
          <div id = "commentSection"> </div>

        </div>

      </div>

      

      <?php
      }
      ?>
      
    </div>    

  </body>

</html>