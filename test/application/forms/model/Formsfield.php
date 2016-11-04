<?php 
namespace app\forms\model;

use think\Model;
class Formsfield extends Model{

    public function forms(){
        return $this->belongsTo('Forms');
    }
}