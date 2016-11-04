<?php
header('content-type:text/html;charset=utf-8'); 
	if(isset($_GET['submit'])){
		$username = $_GET['username'];
		$password = $_GET['userpwd'];
		echo "用户名:$username"."<br>";
		echo "密码:$password"."<br>";
	}

 ?>