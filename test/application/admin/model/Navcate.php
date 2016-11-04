<?php 
namespace app\admin\model;

use think\Model;

class Navcate extends Model
{
    public function nav()
    {
        return $this->hasMany('\app\admin\model\Nav','category_id','id');
    }
}