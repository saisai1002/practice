<?php
namespace app\index\controller;
class Content extends \app\index\controller\Common{

    public function index($id){
        if (request() -> isGet()) {
            if ($category = get_content_category($id)) {

                if (1 != $category['status']) {
                    $this -> error('栏目不存在！');
                }

                if ($category['ebcms_url']) {
                    $this->redirect(htmlspecialchars_decode($category['ebcms_url']),302);
                }

                // 路径
                $categorys = get_content_category('all');
                $pdatas = \ebcms\Tree::parent_data($categorys,$id);
                foreach ($pdatas as $value) {
                    \ebcms\Position::add(['title'=>$value['title'],'url'=>$value['url']]);
                }
                \ebcms\Position::add(['title'=>$category['title'],'url'=>$category['url']]);

                // seo设置
                $this -> assign('seo',[
                    'title' => $category['metatitle'] . ' - ' . $this -> seo['sitename'],
                    'keywords' => $category['keywords'],
                    'description' => $category['description'],
                    ]);

                $this -> assign('category',$category);
                // 0表示不缓存
                $category['expire'] = $category['expire']?$category['expire']:false;
                $categorys = get_content_category();
                switch ($category['datatype']) {
                        
                    case 0:// 不获取
                        $this -> assign('page','');
                        $this -> assign('lists',[]);
                        break;
                    
                    case 1: // 当前栏目
                        $lists = \app\content\model\Content::where(['category_id'=>$id,'status'=>1]) -> field(true) -> order($category['order']) -> cache($category['expire']) -> paginate($category['pagenum']?:20);
                        $this -> assign('page',$lists->render());
                        $this -> assign('lists',$lists);
                        break;
                    case 2: // 子栏目
                        $subids = \ebcms\Tree::subid($categorys,$category['id']);
                        $lists = \app\content\model\Content::where(['category_id'=>['in',$subids],'status'=>1]) -> field(true) -> order($category['order']) -> cache($category['expire']) -> paginate($category['pagenum']?:20);
                        $this -> assign('page',$lists->render());
                        $this -> assign('lists',$lists);
                        break;
                    case 3: // 所有子级栏目
                        $subids = \ebcms\Tree::subtreeid($categorys,$category['id']);
                        $lists = \app\content\model\Content::where(['category_id'=>['in',$subids],'status'=>1]) -> field(true) -> order($category['order']) -> cache($category['expire']) -> paginate($category['pagenum']?:20);
                        $this -> assign('page',$lists->render());
                        $this -> assign('lists',$lists);
                        break;
                    case 4: // 不限栏目
                        $subids = \ebcms\Tree::subtreeid($categorys,$category['id']);
                        $lists = \app\content\model\Content::where(['status'=>1]) -> order($category['order']) -> field(true) -> cache($category['expire']) -> paginate($category['pagenum']?:20);
                        $this -> assign('page',$lists->render());
                        $this -> assign('lists',$lists);
                        break;
                    
                    default:
                        $this -> assign('page','');
                        $this -> assign('lists',[]);
                        break;
                }


                return $this -> fetch($category['tpl']);
            }else{
                $this -> error('栏目不存在');
            }
        }
    }

    public function detail(){
        if ($filename = input('filename')) {
            $where = [
                'content.filename' => $filename
            ];
        }else{
            $where = [
                'content.id'    => input('id',0,'intval')
            ];
        }
        if (request() ->isGet()) {
            if ($content = \app\content\model\Content::where($where) -> with('category,body') -> find()) {

                if (1 != $content['status']) {
                    $this -> error('内容未审核！');
                }

                if ($content['category']['status']!=1) {
                    $this -> error('内容未审核！');
                }

                if ($content['ebcms_url']) {
                    $this->redirect(htmlspecialchars_decode($content['ebcms_url']),302);
                }

                // 路径
                $categorys = get_content_category('all');
                $pdatas = \ebcms\Tree::parent_data($categorys,$content['category_id']);
                foreach ($pdatas as $value) {
                    \ebcms\Position::add(['title'=>$value['title'],'url'=>$value['url']]);
                }
                \ebcms\Position::add(['title'=>$categorys[$content['category_id']]['title'],'url'=>$categorys[$content['category_id']]['url']]);
                \ebcms\Position::add(['title'=>$content['title'],'url'=>$content['url']]);

                // seo设置
                $this -> assign('seo',[
                    'title' => $content['metatitle'] . ' - ' . $this -> seo['sitename'],
                    'keywords' => $content['keywords'],
                    'description' => $content['description'],
                    ]);

                // 统计点击次数
                if (\ebcms\Config::get('content.click_record')) {
                    \think\Hook::add('app_end','app\\index\\behavior\\Click');
                }
                
                $this -> assign('content',$content);

                $catetpl = isset($categorys[$content['category_id']])?$categorys[$content['category_id']]['tpl_detail']:'';
                return $this -> fetch($content['tpl']?:$catetpl);
            }else{
                $this -> error('内容不存在');
            }
        }
    }

    public function search(){
        if (request() -> isGet()) {
            $q = input('q');
            // position设置
            \ebcms\Position::add(['title'=>'搜索','url'=>url('index/content/search')]);
            if ($q) {
                $q = trim($q);
                $where = [
                    'content.status' => 1,
                    'category.status' => 1,
                    'content.title|content.keywords|content.description' => ['like','%'.$q.'%']
                ];
                $lists = \app\content\model\Content::with('body,category') -> where($where) -> paginate(5,false,[
                    'query' => ['q'=>$q],
                ]);
                $this -> assign('page',$lists->render());
                $this -> assign('lists',$lists);
                // seo设置
                $this -> assign('seo',[
                    'title' => '搜索：' . $q . ' - ' . $this -> seo['sitename'],
                    'keywords' => $q,
                    'description' => $q,
                    ]);
            }else{
                // seo设置
                $this -> assign('seo',[
                    'title' => '搜索 - ' . $this -> seo['sitename'],
                    'keywords' => '搜索',
                    'description' => '搜索',
                    ]);
            }
            $this -> assign('q',$q);
            return $this -> fetch();
        }
    }

}