<?php 
namespace app\admin\model;

use think\Model;

class Configcate extends Model
{
    public function config()
    {
        return $this->hasMany('Config','category_id');
    }
}