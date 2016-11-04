<?php 
namespace app\admin\model;

use think\Model;

class Recommendcate extends Model
{
    public function Recommend()
    {
        return $this->hasMany('Recommend','category_id','id');
    }
}