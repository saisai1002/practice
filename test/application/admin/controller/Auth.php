<?php
namespace app\admin\controller;
use think\Controller;
class Auth extends Controller{

    // 登录
    public function login(){

        session('?abc');
        if (!isset($_SESSION['login_auth'])) {
            $this -> redirect('index/index/index');
        }

        // 登陆页面
        if (request() -> isGet()) {
            $this -> assign('seo',[
                'title' => '欢迎登陆易贝内容管理系统',
                'keywords' => '欢迎登陆易贝内容管理系统',
                'description' => '欢迎登陆易贝内容管理系统',
                ]);
            return $this -> fetch();
        }elseif (request() -> isPost()) {
            // 验证验证码
            $verify = new \org\Verify([]);
            if (!$verify -> check(input('verify'),1)) {
                $this -> error('验证码错误！','','verify');
            }
            // 读取该账户
            $where = array(
                'email' => input('email'),
                );
            $admin = include APP_PATH.'admin.php';
            if ($admin) {
                if ($admin['email'] != input('email')) {
                    $this -> error('账户不正确！');
                }
                if ($admin['password'] != md5(input('password').input('email').' love ebcms forever!')) {
                    $this -> error('密码不正确！');
                }
                unset($_SESSION['login_auth']);
                // 清空session
                \think\Session::clear();
                // 写入新session
                session('admin_auth',1);
                unset($_SESSION['login_auth']);
                $this -> success('登陆成功!',url('admin/index/index'));
            } else {
                $this -> error('信息错误，请重新输入！');
            }

        }
    }

    // 退出
    public function logout(){
        if (request() -> isGet()) {
            \think\Session::clear();
            $this -> success('退出成功');
        }
    }

}