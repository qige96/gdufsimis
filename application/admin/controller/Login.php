<?php
namespace app\admin\controller;
use think\Cookie;
use think\Controller;

class Login EXTENDS Base
{
	private $adm;
	public function _initialize(){
		$this->adm = model('Admin');
	}

	public function index(){
		if(request()->isPost()) {
            // 登录的逻辑
            //获取相关的数据
            $data = input('post.');
            // 通过用户名 获取 用户相关信息
            $ret = $this->adm->get(['admin_id'=>$data['admin_id']]);

            if(!$ret ) 
                $this->error('该用户不存在');
            if($ret->password != md5Process($data['password'])) 
                $this->error('密码不正确');

            // 保存用户cookie信息
            if(array_key_exists('remember', $data)){
                cookie('admin_id', $data['admin_id'], 3600*2400*7);
                cookie('password', $data['password'], 3600*2400*7);
            }else {
                cookie('admin_id', null);
                cookie('password', null);
            }
            // 保存用户session信息 
            session('admin', $ret, 'admin');
            return $this->success('登录成功', url('index/index'));    

        }else {
            // 获取session
            $admin_id = session('admin', '', 'admin');
            if($admin_id ) 
                return $this->redirect(url('index/index'));
            if(Cookie::has('admin_id')){
                $this->assign('admin_id_cookie',cookie('admin_id'));
                $this->assign('password_cookie',cookie('password'));
            }else{
                $this->assign('admin_id_cookie','');
                $this->assign('password_cookie','');
            }
            return $this->fetch();
        }
	}

    //退出登陆逻辑
	public function logout() {
        // 清除session
        session(null, 'admin');
        // 跳出
        $this->redirect('login/index');
    }

}