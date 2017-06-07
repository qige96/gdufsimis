<?php
namespace app\inner\controller;
use think\Cookie;
use think\Controller;

class Login EXTENDS Base
{
	private $user;
	public function _initialize(){
		$this->user = model('User');
	}

	public function index(){
		if(request()->isPost()) {
            // 登录的逻辑
            //获取相关的数据
            $data = input('post.');
            // 通过用户名 获取 用户相关信息
            $ret = $this->user->get(['stu_id'=>$data['stu_id']]);
            // dump($ret);

            if(!$ret ) 
                $this->error('改用户不存在，获取用户未被审核通过');
            if($ret->password != md5Process($data['password'])) 
                $this->error('密码不正确');

            // 保存用户cookie信息
            if(array_key_exists('remember', $data)){
                cookie('stu_id', $data['stu_id'], 3600*2400*7);
                cookie('password', $data['password'], 3600*2400*7);
            }else {
                cookie('stu_id', null);
                cookie('password', null);
            }
            // 保存用户session信息 
            session('stu', $ret, 'inner');
            return $this->success('登录成功', url('user/index'));    

        }else {
            // 获取session
            $stu_id = session('stu', '', 'inner');
            if($stu_id ) 
                return $this->redirect(url('user/index'));
            if(Cookie::has('stu_id')){
                $this->assign('stu_id_cookie',cookie('stu_id'));
                $this->assign('password_cookie',cookie('password'));
            }else{
                $this->assign('stu_id_cookie','');
                $this->assign('password_cookie','');
            }
            return $this->fetch();
        }
	}

    //退出登陆逻辑
	public function logout() {
        // 清除session
        session(null, 'inner');
        // 跳出
        $this->redirect('login/index');
    }

}