<?php
namespace app\admin\controller;
class Api extends \app\admin\controller\Common{

    public function index(){
        if(request()->isGet()) {
            $this -> success('','',$this ->fetch());
        }elseif (request() -> isPost()) {
            if ($api = input('api')) {
                $this -> $api();
            }
        }
    }

    // 数据字典缓存
    private function asyncdata(){
        $request = request();
        $res = array();
        $res['api_url'] = url('admin/api/index');
        $res['recommend_url'] = url('admin/recommend/push');
        $res['suggestkeywords_url'] = url('admin/server/index');
        $res['config'] = [
            'WebUploader_swf' => '/webuploader/Uploader.swf',
            'WebUploader_server' => url('admin/index/upload'),
        ];
        $res['ueditor'] = \ebcms\Config::get('system.ueditor');
        $res['root'] = get_root();
        $this -> success('加载成功','',$res);
    }

    // 我的菜单
    private function mymenu(){
        $where = [];
        $where['status'] = ['in',[1,2]];
        $data = \think\Db::name('menu') -> where($where) -> order('sort desc,id asc') ->select();
        foreach ($data as &$v) {
            $v['url'] = urlencode(url($v['url']));
        }
        $this -> success('获取成功！','',['rows'=>$data]);
    }

    // 字典数据
    private function datadict(){
        if ($datadict = input('datadict')) {
            $_where = array(
                'status' => array('eq',1),
                'field' => array('eq',$datadict),
                );
            if ($cate = \think\Db::name('datadictcate') -> where($_where) -> find()) {
                $_where = array(
                    'status' => array('eq',1),
                    'category_id' => array('eq',$cate['id']),
                    );
                $m = \think\Db::name('datadict');
                if (input('order/a')){
                    $m -> order(input('order/a'));
                }

                $_data = $m -> where($_where) -> select();
                $data = [];
                foreach ($_data as &$v) {
                    $v['value'] = render_str($v['value']);
                    $data[$v['id']] = $v;
                };
                $res = array();
                foreach ($data as $key => $value) {
                    $d = array();
                    $d['id'] = (string)$value['value'];
                    $d['pid'] = isset($data[$value['pid']])?(string)$data[$value['pid']]['value']:'';
                    $d['title'] = $value['title'];
                    $d['remark'] = $value['remark'];
                    $res[$value['value']] = $d;
                }
                $this -> success('','',['rows'=>$res]);
            }else{
                $this -> error('数据不存在！');
            }
        }else{
            $this -> error('数据不存在！');
        }
    }

    private function suggest_keywords(){
        $res = \ebcms\Server::api('keywords_suggest',['k'=>input('k')]);
        if ($res['code']) {
            $this -> success($res['msg'],'',$res['data']);
        }else{
            $this -> error($res['msg'],'',$res['data']);
        }
    }

    private function check_version(){
        $ver = include CONF_PATH.'version.php';
        $param = [
            'version'   =>  $ver['version'],
        ];
        $res = \ebcms\Server::api('version_next',$param);
        if ($res['code']) {
            $this -> success($res['msg'],'',$res['data']);
        }else{
            $this -> error($res['msg'],'',$res['data']);
        }
    }

}