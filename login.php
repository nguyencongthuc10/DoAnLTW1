<?php
session_start();
require_once "user.php";
if(isset($_GET['user'])){
	$user1 = new User($_GET['user'],$_GET['pass']);
	if($user1->login($_GET['user'],$_GET['pass'])){
		if(isset($_GET['remember'])){
			setcookie('user',$_GET['user'],time()+3600);
			setcookie('pass',$_GET['pass'],time()+3600);
		}
		//echo "Logged in successfully";
		//Luu thong tin vao session
		$_SESSION['user']=$_GET['user'];
		header('location:index.php');
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style type="text/css">
		.s1{
			color: black;
			text-align: center;

		}
		form 
		{
		  /*box-sizing: border-box;*/
		  width: 260px;
		  margin: 30px auto 0;
		  box-shadow: 5px 5px 10px 3px rgba(0, 0, 0, 0.2);
		  padding-bottom: 40px;
		   padding-top: 40px;
		   padding-left: 40px;
		  border-radius: 1px;
		  background-color:  #66FFCC;
		}

	</style>
</head>
<body>

	
		
	<h1 class="s1">Đồ Án Nhóm 7</h1>	
<form action="" method="get">

	
	Username<input type="text" name="user" value="<?php echo isset($_COOKIE['user'])?$_COOKIE['user']:"" ?>"><br><br>
	Password<input type="Password" name="pass"><br><br>
	<input type="checkbox" name="remember">Remember
	<input type="submit" name="" value="Submit">
</form>
</body>
</html