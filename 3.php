<?php
header('content-type:text/html;charset=utf-8');
$mem = new memcache();
$mem->connect('127.0.0.1',11211);
$data = $mem->get('data');//通过键key来获取数据
if(empty($data)){
	echo "this is mysql data";
	$mysqli = new mysqli('127.0.0.1','root','root','mytest');
	$sql = "select * from student";
	$rs = $mysqli->query($sql);
/*	echo "<pre>";
	print_r($rs);die;*/
	$data = array();
	while($row = $rs->fetch_row()){
		$data[] = $row;
	}

	$data = $mem->set('data',$data,0,5);
	var_dump($data);
}else{
	echo "this is memcache data";
	echo "<pre>";
	print_r($data);
}
