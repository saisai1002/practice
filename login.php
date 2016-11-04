<?php 
header('content-type:text/html;charset=utf-8');
//需求:频繁输错密码后，就在规定时间内不允许登录，也就是说不去验证数据库里的密码信息
//实现方式:每次输错密码之后，计数一次，并且设置有效时间。
$name = $_POST['username'];
$password=$_POST['password'];
//正常应该连接数据库进行比对
//这里直接当做正确密码为123456
$truePassword = 123456;
$redis = new Redis();
$redis->connect('127.0.0.1',6379);
//判断如果输入错误密码超过三次，则暂时不让登录
$flag = $redis->get($name);
if($flag > 3){
	echo "您的密码已经输入三次以上,请五分钟后重试~";
}else{
	//验证如果不通过
	if($password != $truePassword){
		//连接redis
		echo "密码错误";
		$redis->incr($name);
		$redis->setTimeout($name,5);
	}else{
		//正常登录成功，写session
		echo "您已登录成功";
	}

}


