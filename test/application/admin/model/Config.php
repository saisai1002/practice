<?php 
namespace app\admin\model;

use think\Model;

class Config extends Model
{

    protected $type = [
        'config'    =>  'json',
    ];

    public function configcate()
    {
        return $this->belongsTo('Configcate');
    }
}