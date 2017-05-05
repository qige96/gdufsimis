<?php
namespace app\inner\controller;
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

            if(!$ret ) {
                $this->error('改用户不存在，获取用户未被审核通过');
            }

            if($ret->password != md5Process($data['password'])) {
                $this->error('密码不正确');
            }

            
            // 保存用户信息  bis是作用域
            session('stu_id', $ret, 'inner');
            return $this->success('登录成功', url('user/index'));


        }else {
            // 获取session
            $stu_id = session('stu_id', '', 'inner');
            if($stu_id ) {
                return $this->redirect(url('user/index'));
            }
            return $this->fetch();
        }
	}

	// public function logincheck(){
	// 	$posted_stu_id = input('stu_id');
	// 	$posted_password = input('password');

	// 	if(!$posted_stu_id)
	// 		$this->error('账号不能为空！');
	// 	if(!$posted_password)
	// 		$this->error('密码不能为空！');

	// 	$user_password = $this->user->getUserPassword($posted_stu_id)['password'];
	// 	if(md5Process($posted_password) == $user_password){
	// 		session('stu_id',$posted_stu_id, 'inner');
	// 		$this->success( "登陆成功!", url("user/index"));
	// 	}else {
	// 		$this->error('账号与密码不一致！');
	// 	}

	// }

	public function logout() {
        // 清除session
        session(null, 'inner');
        // 跳出
        $this->redirect('login/index');
    }

}