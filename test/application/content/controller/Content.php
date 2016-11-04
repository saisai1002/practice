<?php
namespace app\content\controller;
class Content extends \app\admin\controller\Common{
    
    public function index()
    {
        $this -> success('','',$this -> fetch());
    }

    public function add()
    {
        if (request()->isGet()) {
            $category = \think\Db::name('content_category') -> where('id='.input('category_id')) -> find(); 
            $this -> fetchform(['category'=>$category],['ext_id'=>$category['extend_id']]);
        }elseif (request()->isPost()) {
            $config = [
                'relation' => [
                    'body' => [
                        'type' => 'hasone',
                    ],
                ],
            ];
            $id = $this -> ebadd($config,true);
            $this -> success('添加成功！');
        }
    }

    public function edit()
    {
        if (request()->isGet()) {
            $data = \app\content\model\Content::with('category,body') -> find(input('id'));
            $res = $data -> toArray();
            if ($res['shorttitle'] == $res['title']) {
                $res['shorttitle'] = '';
            }
            if ($res['metatitle'] == $res['title']) {
                $res['metatitle'] = '';
            }
            $this -> fetchform($res,['ext_id'=>$res['category']['extend_id']]);
        }elseif (request()->isPost()) {

            $config = [
                'relation' => [
                    'body' => [
                        'type' => 'hasone',
                    ]
                ],
            ];
            $this -> ebedit($config,true);
            $this -> success('更新成功！');
        }
    }

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
        if (request()->isPost()) {
            $config = [
                'relation' => [
                    'body' => [
                        'type' => 'hasone',
                    ],
                ],
            ];
            $this -> ebdelete($config);
        }
    }

    public function move(){
        if (request() -> isGet()) {
            $this -> fetchform();
        }elseif (request() -> isPost()) {
            $ids = explode(',', input('ids'));
            $category_id = input('category_id');
            if ($ids && $category_id) {
                $this -> ebfield($ids,'category_id',$category_id);
            }else{
                $this -> error('提交错误');
            }
        }
    }

    // 检查是否被百度收录
    public function baidu(){
        // 加载应用模式对应的配置文件
        $id = input('id');
        $data = \app\content\model\Content::get($id);
        $url = request() -> domain() . $data['url'];
        $baidu = $this -> check_baidu($url);
        $data -> baidu = $baidu;
        $data -> save();
        $this -> success($baidu?'已收录！':'未收录！','',$baidu);
    }

    // 检查是否被百度收录
    protected function check_baidu($url) {
        $geturl = 'http://www.baidu.com/s?wd=' . urlencode($url);
        if (function_exists('curl_init')) {
            $curl = curl_init();
            curl_setopt($curl, CURLOPT_URL, $geturl);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $rs = curl_exec($curl);
            curl_close($curl);
        }else{
            $rs = file_get_contents($geturl);
        }
        $kws = '没有找到该URL';
        if ($bdk = \ebcms\Config::get('content.baidu_notfound_keyword')) {
            $kws = str_replace('{url}', $url, $bdk);
        }
        if (!strpos($rs,$kws)) {
            return 1;
        }
        return 0;
    }
    
}