<?php 
namespace app\index\behavior;

class Tongji {
    public function run(&$params){
        $pos = \ebcms\Position::getLast();
        $data = [
            'title'         =>  $pos['title'],
            'url'           =>  request() -> url(true),
            'ip'            =>  request() -> ip(0,true),
            'create_time'   =>  time(),
        ];
        \think\Db::name('tongji')->insert($data);
    }
}