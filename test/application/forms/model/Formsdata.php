<?php 
namespace app\forms\model;

use think\Model;
class Formsdata extends Model{

    protected $name = 'formsdata';
    protected $insert = ['ip'];
    protected $type = [
        'data'    =>  'json',
    ];

    public function forms(){
        return $this->belongsTo('Forms');
    }

    protected function setIpAttr(){
        return request()->ip();
    }

}