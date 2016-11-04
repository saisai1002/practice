<?php
namespace app\admin\controller;
class Recommend extends \app\admin\controller\Common{

    public function index()
    {
        $this -> success('','',$this -> fetch());
    }

    public function add(){
        if (request()->isGet()) {
            $ext_id = \think\Db::name('recommendcate') -> where('id='.input('category_id')) -> value('extend_id'); 
            $this -> fetchform('',array('ext_id'=>$ext_id));
        }elseif (request()->isPost()) {
            $this -> ebadd();
        }
    }

    public function edit(){
        if (request()->isGet()) {
            $data = \app\admin\model\Recommend::with('recommendcate') -> find(input('id'));
            $this -> fetchform($data,['ext_id'=>$data['recommendcate']['extend_id']]);
        }elseif (request()->isPost()) {
            $this -> ebedit();
        }
    }

    // 改变样式
    public function style(){
        if (request()->isPost()) {

            $config = [
                'allowfield' => ['bold','size','color'],
                'validate_scene'  => 'style',
            ];
            $this -> ebedit($config);
        }
    }

    public function delete(){
        if (request() -> isPost()) {
            $this -> ebdelete();
        }
    }

    public function push(){
        if (request()->isGet()) {
            $this -> success('','',$this -> fetch());
        }elseif (request() -> isPost()) {
            if (input('__type') == 'getrecommendtype') {
                $_where = array(
                    'status' => array('eq',1),
                    );
                $recommendcate = \think\Db::name('recommendcate') -> where($_where) -> order('sort desc,id desc') -> select();
                $recommeded = \think\Db::name('recommend') -> where(array('model'=>array('eq',input('model')),'content_id'=>array('eq',input('content_id')))) -> column('category_id');
                $result = array(
                    'rows' => array_mark($recommendcate,$recommeded,'id','checked',true,false),
                    );
                $this -> success('获取成功！','',$result);
            }else{
                $category_ids = input('category_ids/a');
                if ($category_ids) {
                    $input = input();
                    unset($input['category_ids']);
                    // 删除旧数据
                    \think\Db::name('recommend') -> where(array('content_id'=>array('eq',$input['content_id']),'model'=>array('eq',$input['model']))) -> delete();
                    $data = array();
                    foreach ($category_ids as $k => $category_id) {
                        $input['category_id'] = $category_id;
                        $data[] = $input;
                    }
                    if (empty($data) || false !== \think\Db::name('recommend') -> insertAll($data)) {
                        $this -> success('推荐位更新成功');
                    }else{
                        $this -> error(\think\Db::name('recommend') -> getDbError());
                    }
                }else{
                    $this -> success('推荐位更新成功');
                }
            }
        }
    }
}