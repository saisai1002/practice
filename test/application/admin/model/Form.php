<?php 
namespace app\admin\model;

use think\Model;

class Form extends Model
{

    protected $type = [
            'ext'    =>  'json',
        ];

    public function formfield()
    {
        return $this->hasMany('Formfield','category_id');
    }
}