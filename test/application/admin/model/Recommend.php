<?php 
namespace app\admin\model;

use think\Model;

class Recommend extends Model
{

    protected $type = [
            'ext'    =>  'json',
        ];

    public function Recommendcate()
    {
        return $this->belongsTo('Recommendcate','category_id');
    }

    // 获取样式
    public function getStyleAttr($value,$data)
    {
        $str = '';
        if ($data['color']) {
            $str .= 'color:'.$data['color'].';';
        }
        if ($data['bold']) {
            $str .= 'font-weight:'.$data['bold'].';';
        }
        if ($data['size']) {
            $str .= 'font-size:'.$data['size'].'px;';
        }
        return $str;
    }
    // 获取链接
    public function getUrlAttr($value,$data)
    {
        if (!$data['ebcms_url']) {
            $url_model = \ebcms\Config::get('system.url_model');
            switch ($url_model) {
                case 2:
                    return url(htmlspecialchars_decode($data['push_url'].'?'.$data['push_mode_2']));
                    break;
                case 1:
                    return url(htmlspecialchars_decode($data['push_url'].'?'.$data['push_mode_1']));
                    break;
                
                default:
                    return url(htmlspecialchars_decode($data['push_url'].'?'.$data['push_mode_0']));
                    break;
            }
        }else{
            if (0 === strpos($data['ebcms_url'], 'http')) {
                return htmlspecialchars_decode($data['ebcms_url']);
            }else{
                return url(htmlspecialchars_decode($data['ebcms_url']));
            }
        }
    }

}