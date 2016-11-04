<?php 
namespace app\admin\model;

use think\Model;
class Extendfield extends Model{

    protected $type = [
        'config'    =>  'json',
    ];

    public function extend(){
        return $this->belongsTo('Extend');
    }
}