<?php 
namespace app\admin\model;

use think\Model;
class Formfield extends Model{

    protected $type = [
        'config'    =>  'json',
    ];

    public function form(){
        return $this->belongsTo('Form');
    }
}