<?php
namespace app\index\controller;
use think\Controller;
class Login EXTENDS Controller
{
	private $user;
	public function _initialize(){
		$this->user = model('User');
	}

	public function index(){
		return $this->fetch();
	}

	public function logincheck(){
		$posted_stu_id = input('stu_id');
		$posted_password = input('password');

		if(!$posted_stu_id)
			$this->error('账号不能为空！');
		if(!$posted_password)
			$this->error('密码不能为空！');

		$user_password = $this->user->getUserPassword($posted_stu_id)['password'];
		if(md5Process($posted_password) == $user_password){
			$this->success( "login sucesss!", "inner/user/index");
		}else {
			$this->error('账号与密码不一致！');
		}

	}

}