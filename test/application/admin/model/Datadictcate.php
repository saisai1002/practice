<?php 
namespace app\admin\model;

use think\Model;

class Datadictcate extends Model
{
    public function datadict()
    {
        return $this->hasMany('Datadict','category_id','id');
    }
}