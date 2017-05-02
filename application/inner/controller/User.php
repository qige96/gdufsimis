<?php
namespace app\inner\controller;
use think\Controller;
class User EXTENDS Controller
{
	private $user;
	public function _initialize(){
		$this->user = model('User');
	} 

	public function index(){
		return $this->fetch();
	}

	public function updateInfo(){
		$data = [
			'stu_id' => input('stu_id'),

			'password' => md5Process(input('password')),
			'confirm_password' => md5Process(input('confirm_password')),
			'nick_name' => input('nick_name'),
			'signature' => input('signature'),
		];
		// dump($data);
		if($data['password'] != md5Process('')) //判断密码框是否为空
			if($data['password'] != $data['confirm_password'])
				$this->error('两次输入的密码不一致！');
		$res = $this->user->updateUser($data);
		if($res)
			$this->success('更新成功！');
		else 
			$this->error('更新失败！');
	}

}