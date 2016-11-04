<?php 
namespace app\index\behavior;

class Click 
{
    public function run(&$params)
    {
        \think\Db::name('content_content')->where(['id'=>input('id')])->setInc('click', 1);
    }
}