<?php 
namespace app\admin\model;

use think\Model;

class Datadict extends Model
{

    protected $type = [
            'ext'    =>  'json',
        ];

    public function datadictcate()
    {
        return $this->belongsTo('Datadictcate','category_id','id');
    }
}