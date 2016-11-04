<?php 
namespace app\admin\model;

use think\Model;

class Nav extends Model
{

    protected $type = [
            'ext'    =>  'json',
        ];

    public function navcate()
    {
        return $this->belongsTo('Navcate','category_id');
    }

    // 获取链接
    public function getUrlAttr($value,$data){
        if ($data['ebcms_url']) {
            if (substr($data['ebcms_url'], 0,4) == 'http') {
                return htmlspecialchars_decode($data['ebcms_url']);
            }else{
                return url(htmlspecialchars_decode($data['ebcms_url']));
            }
        }else{
            return '';
        }
    }

}