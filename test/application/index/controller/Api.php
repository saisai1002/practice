<?php
namespace app\index\controller;

class Api{

    public function verify(){
        $id = input('id',1,'intval');
        $verify = new \org\Verify([]);
        $verify->entry($id);
    }
}