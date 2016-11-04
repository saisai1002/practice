<?php 
namespace app\index\taglib;

use think\template\TagLib;

class content extends Taglib
{

    // 标签定义
    protected $tags = [
        // 标签定义： attr 属性列表 close 是否闭合（0 或者1 默认1） alias 标签别名 level 嵌套层次
        // 文章
        'category'          =>  ['attr'=>'id,pid,tree,return','close'=>0],
        'list'              =>  ['attr'=>'category_id,recommend,extend_id,level,cache,order,limit,return','close'=>0],
        'detail'            =>  ['attr'=>'id,return','close'=>0],
    ];

    // 文章分类
    public function tagcategory($tag,$content){
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        if (isset($tag['id'])) {
            if ('$' == substr($tag['id'],0,1)) {
                $tag['id']   = $this->autoBuildVar($tag['id']);
                $str .="\${$tag['return']} = get_content_category({$tag['id']});";
            }else{
                $str .="\${$tag['return']} = get_content_category('{$tag['id']}');";
            }
        }elseif(isset($tag['pid'])){
            if ('$' == substr($tag['pid'],0,1)) {
                $tag['pid']   = $this->autoBuildVar($tag['pid']);
                if (isset($tag['tree']) && $tag['tree'] == 1) {
                    $str .="\${$tag['return']} = \\ebcms\\Tree::subtree(get_content_category(),{$tag['pid']});";
                }else{
                    $str .="\${$tag['return']} = \\ebcms\\Tree::sub(get_content_category(),{$tag['pid']});";
                }
            }else{
                if (isset($tag['tree']) && $tag['tree'] == 1) {
                    $str .="\${$tag['return']} = \\ebcms\\Tree::subtree(get_content_category(),'{$tag['pid']}');";
                }else{
                    $str .="\${$tag['return']} = \\ebcms\\Tree::sub(get_content_category(),'{$tag['pid']}');";
                }
            }
        }else{
            if (isset($tag['tree']) && $tag['tree'] == 1) {
                $str .="\${$tag['return']} = \\ebcms\\Tree::tree(get_content_category());";
            }else{
                $str .="\${$tag['return']} = get_content_category();";
            }
        }
        $str .=" ?>";
        return $str;
    }

    // 文章列表
    public function taglist($tag,$content) {
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = [];";
        // 解析 category_id 限制
        if (isset($tag['category_id'])) {
            if ('$' == substr($tag['category_id'],0,1)) {
                $tag['category_id']   = $this->autoBuildVar($tag['category_id']);
                $str .="\$_category_id = {$tag['category_id']};";
            }else{
                $str .="\$_category_id = '{$tag['category_id']}';";
            }
            if (isset($tag['level']) && $tag['level'] == 1) {
                $str .="\$_ids = \\ebcms\\Tree::subtreeid(get_content_category(),\$_category_id);";
                $str .="\$_where['content.category_id'] = array('in',array_merge(\$_ids,(array)\$_category_id));";
            }else{
                $str .="\$_where['content.category_id'] = array('eq',\$_category_id);";
            }
        }
        // 解析 extend_id 限制
        if (isset($tag['extend_id'])) {
            if ('$' == substr($tag['extend_id'],0,1)) {
                $tag['extend_id']   = $this->autoBuildVar($tag['extend_id']);
                $str .="\$_where['category.extend_id'] = {$tag['extend_id']};";
            }else{
                $str .="\$_where['category.extend_id'] = '{$tag['extend_id']}';";
            }
        }

        if (isset($tag['recommend']) && $tag['recommend'] == 1) {
            $str .="\$_where['content.sort'] = 1;";
        }
        
        $str .="\$_where['content.status'] = ['eq',1];";
        // $str .="\$_where['category.status'] = ['eq',1];";
        $str .="\$_m = \app\content\model\Content::with('category') -> where(\$_where);";
        if (isset($tag['order'])) {
            $str .="\$_m -> order('{$tag['order']}');";
        }else{
            $str .="\$_m -> order('content.id desc');";
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
        // 解析cache限制属性
        if (isset($tag['cache'])) {
            if ('$' == substr($tag['cache'],0,1)) {
                $tag['cache']   = $this->autoBuildVar($tag['cache']);
                $str .="\$_m -> cache({$tag['cache']});";
            }else{
                $str .="\$_m -> cache('{$tag['cache']}');";
            }
        }
        $str .="\${$tag['return']} = \$_m -> select();";
        $str .=" ?>";
        return $str;
    }

    // 解析内容标签 mark,id,return
    public function tagdetail($tag,$content){
        if (!isset($tag['id']) && !isset($tag['mark'])) {//module或者return为空 返回空
            return;
        }
        if (!isset($tag['return'])) {//return为空 返回空
            $tag['return'] = '_data';
        }
        $str = '';
        $str .="<?php ";
        $str .="\${$tag['return']} = [];";
        $str .="\$_where = [];";
        $str .="\$_where['status'] = ['eq',1];";
        $str .="\$_m = \app\content\model\Content::where(\$_where) -> field(true);";
        // id限制
        if (isset($tag['id'])) {
            if ('$' == substr($tag['id'],0,1)) {
                $tag['id'] = $this->autoBuildVar($tag['id']);
                $str .="\${$tag['return']} = \$_m -> find({$tag['id']});";
            }else{
                $str .="\${$tag['return']} = \$_m -> find('{$tag['id']}');";
            }
        }
        $str .=" ?>";
        return $str;
    }

}