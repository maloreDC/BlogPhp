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
  $like  = $_POST['Like'];
  $id =  $_POST['ID'];

  $likePost = "INSERT INTO emp_like(emp_uName, postid) VALUES('$uName', '$id')";
  $conn->query($likePost);

?>

<?php
							$countLike = "SELECT COUNT(id) FROM emp_like WHERE postid='$id'";
							$resultCount = $conn -> query($countLike);
							while($row = $resultCount -> fetch_array()){
						?>
				
								<p><?=$row['COUNT(id)'];?></p>
							
							
						<?php
							}
						?>

