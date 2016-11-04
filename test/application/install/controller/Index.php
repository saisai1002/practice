<?php
namespace app\install\controller;

use think\Controller;
class Index extends Controller
{
    public function _initialize(){
        if(is_file(CONF_PATH.'install.lock')){
            $this -> error('请不要重复安装！');
        }
        $this -> assign('namespace',ns());
    }

    public function index(){
        $step = request() -> request('step');
        if (is_numeric($step)) {
            $this -> assign('steps',['安装协议','环境检查','站点配置','系统安装','安装成功']);
            $this -> step = $step;
            $step = 'step'.$step;
            $this -> tpl = $step;
            $this -> success('','',$this -> $step());
        }else{
            if (!isset($_GET['xx'])) {
                $x = @file_get_contents(get_root(true).'/index.html?xx=伪静态检测');
                if (!$x) {
                    header('Location:'.get_root(true).'/index.php/index.html?xx=您的系统不支持伪静态');
                    die('你的系统不支持伪静态！');
                }
            }
            return $this -> fetch();
        }
    }

    protected function step0(){
        if (request() -> isGet()) {
            return $this -> fetch($this -> tpl);
        }
    }

    protected function step1(){
        if (request() -> isGet()) {
            session('error',0);
            $this -> assign('check_env',check_env());
            $this -> assign('check_dirfile',check_dirfile());
            $this -> assign('check_func',check_func());
            $this -> assign('error',session('error'));
            return $this -> fetch($this -> tpl);
        }
    }

    protected function step2(){
        if (request() -> isGet()) {
            return $this -> fetch($this -> tpl);
        }elseif (request() -> isPost()) {
            $input = input();
            $user_password = $input['user_password'];
            if ($user_password != $input['user_password2']) {
                $this -> error('两次密码输入不一样！请确认！');
            }
            if (strlen($user_password) > 10 || strlen($user_password) < 5) {
                $this -> error('密码长度不符合要求！');
            }
            $dbconfig = array(
                'type'            =>  'mysql',
                'hostname'        =>  $input['hostname'],
                'database'        =>  $input['database'],
                'hostport'        =>  $input['hostport'],
                'username'        =>  $input['username'],
                'password'        =>  $input['password'],
                'params'           =>  [],
                'charset'          => 'utf8',
                'prefix'         =>  $input['prefix'],
                );
            if (isset($input['createdatabase']) && $input['createdatabase'] == 1) {
                $rootconfig = array(
                    'type'            =>  'mysql',
                    'hostname'        =>  $input['hostname'],
                    'username'        =>  $input['username_root'],
                    'password'        =>  $input['password_root'],
                    'hostport'        =>  $input['hostport'],
                    'params'           =>  [],
                    'charset'          => 'utf8',
                    'prefix'         =>  $input['prefix'],
                    );
                $db = \think\Db::connect($rootconfig);
                $sql = 'CREATE DATABASE IF NOT EXISTS `'.$dbconfig['database'].'` DEFAULT CHARACTER SET utf8';
                $x = $db->execute($sql);
                if (!$db->execute($sql)) {
                    $this->error('ROOT账户配置错误！');
                }
            }
            $db = \think\Db::connect($dbconfig);
            $sql1 = "CREATE TABLE IF NOT EXISTS `".$dbconfig['prefix'].md5(serialize($dbconfig))."` (id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),ebcmstest varchar(15));";
            $sql2 = "DROP TABLE IF EXISTS `".$dbconfig['prefix'].md5(serialize($dbconfig))."`;";
            if (0 != $db->execute($sql1) || 0 != $db->execute($sql2)) {
                $this -> error('数据库配置错误！');
            }
            $dbdemo = $input['demodatabase'];
            session('dbdemo',$dbdemo);
            session('dbconfig',$dbconfig);
            session('user_password',$input['user_password']);
            $input['user_email'] = $input['user_email']?:'1540837821@qq.com';
            session('user_email',$input['user_email']);
            $this -> success('配置成功！');
        }
    }

    protected function step3(){
        if (request() -> isGet()) {
            return $this -> fetch($this -> tpl);
        }elseif (request() -> isPost()) {
            $process = input('process');
            $dbconfig = session('dbconfig');
            switch ($process) {
                case 'createdatabase':
                    if (!$dbconfig) {
                        $this -> error('数据库配置错误！');
                    }
                    $tables = '安装数据...<br>';
                    if (session('dbdemo')) {
                        $tables .= '载入演示数据库...<br>';
                        $sql = file_get_contents(APP_PATH.'install/data/install_demo.sql');
                    } else {
                        $tables .= '载入数据库...<br>';
                        $sql = file_get_contents(APP_PATH.'install/data/install.sql');
                    }
                    $sql = str_replace('ebcms5_', $dbconfig['prefix'], $sql);
                    $ret = array();
                    $num = 0;
                    foreach(explode(";\r\n", trim($sql)) as $query) {
                        $ret[$num] = '';
                        $queries = explode("\r\n", trim($query));
                        foreach($queries as $query) {
                            $ret[$num] .= (isset($query[0]) && $query[0] == '#') || (isset($query[1]) && isset($query[1]) && $query[0].$query[1] == '--') ? '' : $query;
                        }
                        $num++;
                    }
                    $tables .= '创建数据表...<br>';
                    $db = \think\Db::connect($dbconfig);
                    foreach ($ret as $key => $value) {
                        if ($value) {
                            $db -> execute($value);
                            if(substr($value, 0, 12) == 'CREATE TABLE') {
                                $tables .= '创建数据表...'.preg_replace("/CREATE TABLE `?([a-z0-9_]+)`? .*/is", "\\1", $value).'<br>';
                            }
                        }
                    }
                    $tables .='创建数据库...完成!';
                    $result = array(
                        'info'=>$tables,
                        'process'=>'updatedbconfig',
                        );
                    return $result;
                    break;
                
                case 'updatedbconfig':
                    if (!$dbconfig) {
                        $this -> error('数据库配置错误！');
                    }
                    $info = '更新系统配置...<br>';
                    // 更新admin文件
                    $user_password = session('user_password');
                    $user_email = session('user_email');
                    $salt = $user_email . ' love ebcms forever!';
                    $admin = [
                        'email'     =>  $user_email,
                        'salt'      =>  $salt,
                        'password'  =>  md5($user_password.$salt)
                    ];
                    file_put_contents(CONF_PATH.'admin.php', '<?php return '.var_export($admin,true).';');
                    // 更新数据库配置文件
                    $dbconfig_old = file_get_contents(APP_PATH.'install/data/database.php');
                    $dbconfig = str_preg_parse($dbconfig_old,$dbconfig);
                    file_put_contents(CONF_PATH.'database.php', $dbconfig);
                    // 更新配置文件
                    $config_old = file_get_contents(APP_PATH.'install/data/config.php');
                    $config = str_preg_parse($config_old,[
                        'safe_code' => md5(serialize($dbconfig).rand()),
                        'session_prefix' => md5(serialize($dbconfig).rand().'_e'),
                        'cache_prefix' => md5(serialize($dbconfig).rand().'_b'),
                        ]);
                    file_put_contents(CONF_PATH.'config.php', $config);
                    // 更新route文件
                    $tags = file_get_contents(APP_PATH.'install/data/route.php');
                    file_put_contents(CONF_PATH.'route.php', $tags);
                    
                    $info .= '更新系统配置...完成！<br>';

                    delfile(RUNTIME_PATH);
                    $info .= '删除缓存！<br>';

                    file_put_contents(CONF_PATH.'install.lock','#'.date('Y-m-d H:i:s'));
                    $info .= '生成安全文件！<br>';
                    $info .= '安装成功！';

                    $result = array(
                        'info'=>$info,
                        'process'=>'end',
                        );
                    return $result;
                    break;
            }
        }
    }

}