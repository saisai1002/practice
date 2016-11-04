<?php 
namespace app\index\taglib;

use think\template\TagLib;

class ebcms extends Taglib
{

    // 标签定义
    protected $tags = [
        // 标签定义： attr 属性列表 close 是否闭合（0 或者1 默认1） alias 标签别名 level 嵌套层次
        'nav'           =>  ['attr' => 'mark,tree,pid,limit,return', 'close' => 0],
        'position'      =>  ['attr' => 'return', 'close' => 0],
        'config'        =>  ['attr' => 'name', 'close' => 0],
        'guestbook'     =>  ['attr'=>'order,recommend,limit,return','close'=>0],
        'link'          =>  ['attr'=>'group,order,limit,return','close'=>0],
        'recommend'     =>  ['attr'=>'mark,order,limit,return','close'=>0],
        'single'        =>  ['attr'=>'id,path,group,order,limit,return','close'=>0],
        'form'          =>  ['attr'=>'id,name,return','close'=>0],
        'bulletin'      =>  ['attr'=>'limit,return','close'=>0],
    ];

    public function tagconfig($tag, $content)
    {
        if (!isset($tag['name'])) {
            return;
        }
        $str = '';
        $str .="<?php ";
        if ('$' == substr($tag['name'],0,1)) {
            $tag['name']   = $this->autoBuildVar($tag['name']);
            $str .="echo \\ebcms\\Config::get('custom.'.{$tag['name']});";
        }else{
            $str .="echo \\ebcms\\Config::get('custom.{$tag['name']}');";
        }
        $str .=" ?>";
        return $str;
    }
    
    public function tagposition($tag, $content)
    {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = \\ebcms\\Position::get();";
        $str .=" ?>";
        return $str;
    }

    public function tagnav($tag,$content) {
        if (!isset($tag['mark'])) {//mark为空 返回空
            return;
        }
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_m = \\app\\admin\\model\\Nav::with('navcate');";
        $str .="\$_where = [];";
        $str .="\$_where['nav.status'] = ['eq',1];";
        $str .="\$_where['navcate.status'] = ['eq',1];";
        // 解析 mark 限制
        if ('$' == substr($tag['mark'],0,1)) {
            $tag['mark']   = $this->autoBuildVar($tag['mark']);
            $str .="\$_where['navcate.mark'] = ['eq',{$tag['mark']}];";
        }else{
            $str .="\$_where['navcate.mark'] = ['eq','{$tag['mark']}'];";
        }
        $str .="\$_m -> order('nav.sort desc,nav.id asc');";
        // 解析 tree 限制
        if (isset($tag['tree']) && $tag['tree'] == 1) {
            $str .="\${$tag['return']}_tmp = \$_m -> where(\$_where) -> select();";
            // pid限制
            if (isset($tag['pid'])) {
                if ('$' == substr($tag['pid'],0,1)) {
                    $tag['pid']   = $this->autoBuildVar($tag['pid']);
                    $str .="\${$tag['return']} = \\ebcms\\Tree::subtree(\${$tag['return']}_tmp,{$tag['pid']});";
                }else{
                    $str .="\${$tag['return']} = \\ebcms\\Tree::subtree(\${$tag['return']}_tmp,'{$tag['pid']}');";
                }
            }else{
                $str .="\${$tag['return']} = \\ebcms\\Tree::tree(\${$tag['return']}_tmp);";
            }
        }else{
            // 解析limit限制属性
            if (isset($tag['limit'])) {
                if ('$' == substr($tag['limit'],0,1)) {
                    $tag['limit']   = $this->autoBuildVar($tag['limit']);
                    $str .="\$_m -> limit({$tag['limit']});";
                }else{
                    $str .="\$_m -> limit('{$tag['limit']}');";
                }
            }
            // pid限制
            if (isset($tag['pid'])) {
                if ('$' == substr($tag['pid'],0,1)) {
                    $tag['pid']   = $this->autoBuildVar($tag['pid']);
                    $str .="\$_where['nav.pid'] = array('eq',{$tag['pid']});";
                }else{
                    $str .="\$_where['nav.pid'] = array('eq','{$tag['pid']}');";
                }
            }
            $str .="\$_m -> where(\$_where);";
            $str .="\${$tag['return']} = \$_m -> select();";
        }
        $str .=" ?>";
        return $str;
    }

    public function tagguestbook($tag,$content) {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_m = \app\admin\model\Guestbook::with('');";
        $str .="\$_where = array();";
        $str .="\$_where['status'] = array('eq',1);";
        if (isset($tag['recommend']) && $tag['recommend'] == 1) {
            $str .="\$_where['sort'] = 1;";
        }
        $str .="\$_m -> where(\$_where);";
        if (isset($tag['order'])) {
            $str .="\$_m -> order('{$tag['order']}');";
        }else{
            $str .="\$_m -> order('id desc');";
        }
        // 解析limit限制属性
        if (isset($tag['limit'])) {
            if ('$' == substr($tag['limit'],0,1)) {
                $tag['limit']   = $this->autoBuildVar($tag['limit']);
                $str .="\$_m -> limit({$tag['limit']});";
            }else{
                $str .="\$_m -> limit('{$tag['limit']}');";
            }
        }
        $str .="\${$tag['return']} = \$_m -> select();";
        $str .=" ?>";
        return $str;
    }

    public function taglink($tag,$content) {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = array();";
        $str .="\$_m = \app\admin\model\Link::with('');";
        if (isset($tag['order'])) {
            $str .="\$_m -> order('{$tag['order']}');";
        }else{
            $str .="\$_m -> order('sort desc,id asc');";
        }
        // 解析group限制属性
        if (isset($tag['group'])) {
            if ('$' == substr($tag['group'],0,1)) {
                $tag['group']   = $this->autoBuildVar($tag['group']);
                $str .="\$_where['group'] = array('eq',{$tag['group']});";
            }else{
                $str .="\$_where['group'] = array('eq','{$tag['group']}');";
            }
        }
        $str .="\$_where['status'] = array('eq',1);";
        $str .="\$_m -> where(\$_where);";
        // 解析limit限制属性
        if (isset($tag['limit'])) {
            if ('$' == substr($tag['limit'],0,1)) {
                $tag['limit']   = $this->autoBuildVar($tag['limit']);
                $str .="\$_m -> limit({$tag['limit']});";
            }else{
                $str .="\$_m -> limit('{$tag['limit']}');";
            }
        }
        $str .="\${$tag['return']} = \$_m -> field(true) -> select();";
        // 易贝内容管理系统已经申请国家专利版权。版权受法律保护！
        // 版权信息禁止删除！否则将受到法律制裁！
        $str .="\${$tag['return']}[] = ['id'=>9999999999,'group'=>'系统','title'=>'易贝内容管理系统','description'=>'易贝内容管理系统是一套优秀的内容管理系统','info'=>'联系qq：1540837821','logo'=>'http://www.ebcms.com/logo.png','url'=>'http://www.ebcms.com/','update_time'=>1468148406,'create_time'=>1468148406,'sort'=>99,'status'=>1,'locked'=>1];";
        $str .=" ?>";
        return $str;
    }

    public function tagrecommend($tag,$content) {
        if (!isset($tag['mark'])) {//return为空 返回空
            return;
        }
        if (!isset($tag['return'])) {
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = [];";
        // 解析 mark 限制
        if(isset($tag['mark'])){
            if ('$' == substr($tag['mark'],0,1)) {
                $tag['mark']   = $this->autoBuildVar($tag['mark']);
                $str .="\$_category_id = \\think\\Db::name('recommendcate') -> where(array('mark'=>array('eq',{$tag['mark']}))) -> value('id');";
            }else{
                $str .="\$_category_id = \\think\\Db::name('recommendcate') -> where(array('mark'=>array('eq','{$tag['mark']}'))) -> value('id');";
            }
            $str .="\$_where['category_id'] = array('eq',\$_category_id?:0);";
        }
        
        $str .="\$_m = new \app\\admin\\model\\Recommend();";
        
        if (isset($tag['order'])) {
            $str .="\$_m -> order('{$tag['order']}');";
        }else{
            $str .="\$_m -> order('sort desc,id desc');";
        }
        $str .="\$_where['status'] = ['eq',1];";
        $str .="\$_m -> where(\$_where);";
        // 解析limit限制属性
        if (isset($tag['limit'])) {
            if ('$' == substr($tag['limit'],0,1)) {
                $tag['limit']   = $this->autoBuildVar($tag['limit']);
                $str .="\$_m -> limit({$tag['limit']});";
            }else{
                $str .="\$_m -> limit('{$tag['limit']}');";
            }
        }
        $str .="\${$tag['return']} = \$_m -> field(true) -> select();";
        $str .=" ?>";
        return $str;
    }

    public function tagsingle($tag,$content) {
        if (!isset($tag['return'])) {
            $tag['return'] = '_data';
        }
        if (isset($tag['id']) || isset($tag['path'])) {//return为空 返回空
            $str = '';
            $str .="<?php ";
            $str .="\${$tag['return']} = [];";
            $str .="\$_where = array();";
            $str .="\$_m = \\think\\Db::name('single');";
            // 解析group限制属性
            if (isset($tag['path'])) {
                if ('$' == substr($tag['path'],0,1)) {
                    $tag['path']   = $this->autoBuildVar($tag['path']);
                    $str .="\$_where['path'] = array('eq',{$tag['path']});";
                }else{
                    $str .="\$_where['path'] = array('eq','{$tag['path']}');";
                }
            }elseif (isset($tag['id'])) {
                if ('$' == substr($tag['id'],0,1)) {
                    $tag['id']   = $this->autoBuildVar($tag['id']);
                    $str .="\$_where['id'] = array('eq',{$tag['id']});";
                }else{
                    $str .="\$_where['id'] = array('eq','{$tag['id']}');";
                }
            }
            $str .="\${$tag['return']} = \$_m -> where(\$_where) -> find();";
            $str .=" ?>";
            return $str;
        }else{
            $str = '';
            $str .="<?php ";
            $str .="\${$tag['return']} = [];";
            $str .="\$_where = array();";
            $str .="\$_m = new \app\admin\model\Single();";
            if (isset($tag['order'])) {
                $str .="\$_m -> order('{$tag['order']}');";
            }else{
                $str .="\$_m -> order('sort desc,id asc');";
            }
            // 解析group限制属性
            if (isset($tag['group'])) {
                if ('$' == substr($tag['group'],0,1)) {
                    $tag['group']   = $this->autoBuildVar($tag['group']);
                    $str .="\$_where['group'] = array('eq',{$tag['group']});";
                }else{
                    $str .="\$_where['group'] = array('eq','{$tag['group']}');";
                }
            }
            $str .="\$_where['status'] = array('eq',1);";
            $str .="\$_m -> where(\$_where);";
            // 解析limit限制属性
            if (isset($tag['limit'])) {
                if ('$' == substr($tag['limit'],0,1)) {
                    $tag['limit']   = $this->autoBuildVar($tag['limit']);
                    $str .="\$_m -> limit({$tag['limit']});";
                }else{
                    $str .="\$_m -> limit('{$tag['limit']}');";
                }
            }
            $str .="\${$tag['return']} = \$_m -> select();";
            $str .=" ?>";
            return $str;
        }
    }

    public function tagform($tag,$content) {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = [];";
        // 解析 id/name 限制
        if (isset($tag['id'])) {
            if ('$' == substr($tag['id'],0,1)) {
                $tag['id']   = $this->autoBuildVar($tag['id']);
                $str .="\$_where['id'] = {$tag['id']};";
            }else{
                $str .="\$_where['id'] = '{$tag['id']}';";
            }
        }elseif (isset($tag['name'])) {
            if ('$' == substr($tag['name'],0,1)) {
                $tag['name']   = $this->autoBuildVar($tag['name']);
                $str .="\$_where['name'] = {$tag['name']};";
            }else{
                $str .="\$_where['name'] = '{$tag['name']}';";
            }
        }
        
        $str .="\$_where['status'] = ['eq',1];";
        $str .="\$_m = \\app\\forms\\model\\Forms::where(\$_where);";
        $str .="\${$tag['return']} = \$_m -> find();";
        $str .=" ?>";
        return $str;
    }

    public function tagbulletin($tag,$content) {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = array();";
        $str .="\$_where['status'] = array('eq',1);";
        $str .="\$_m = \\app\\bulletin\\model\\Bulletin::where(\$_where);";
        // 解析limit限制属性
        if (isset($tag['limit'])) {
            if ('$' == substr($tag['limit'],0,1)) {
                $tag['limit']   = $this->autoBuildVar($tag['limit']);
                $str .="\$_m -> limit({$tag['limit']});";
            }else{
                $str .="\$_m -> limit('{$tag['limit']}');";
            }
        }
        $str .="\${$tag['return']} = \$_m -> field(true) -> select();";
        $str .=" ?>";
        return $str;
    }

}