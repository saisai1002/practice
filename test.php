<?php 
$arr = array_merge(range(1,9),range('a', 'z'));
$index = array_rand($arr,5);
shuffle($index);
$code="";
foreach ($index as $key => $value) {
	$code .= $arr[$value];
}
echo "$code";