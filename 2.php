<?php
session_start(); 
ini_set('session.save_handler','memcache');
ini_set('session.save_path','tcp://127.0.0.1:11211');
$_SESSION['name'] = 'tom';
$_SESSION['age'] = 18;
echo session_id();
var_dump($_SESSION);
