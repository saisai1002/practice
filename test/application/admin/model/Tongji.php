<?php 
namespace app\admin\model;

use think\Model;

class Tongji extends Model
{

    protected $type = [
        'request'    =>  'serialize',
    ];

    public function getCreateTimeAttr($value,$data){
        return date('Y-m-d H:i:s',$value);
    }
    
}