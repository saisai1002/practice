<?php 
$mem = new memcache();
$mem->connect('127.0.0.1',11211);
$rs2 = $mem->get('age');
var_dump($rs2);