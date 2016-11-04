<?php 
namespace app\admin\model;

use think\Model;

class Extend extends Model
{
    public function extendfield()
    {
        return $this->hasMany('Extendfield','category_id');
    }
}