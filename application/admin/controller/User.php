<?php
namespace app\admin\controller;
use think\Controller;
class User EXTENDS Base
{

	private $user;
	public function _initialize(){
		$this->user = model('User');
	}

	public function index(){
		return $this->fetch();
	}

	public function register(){
		$data = [
			'stu_id' => input('stu_id'),
			'name' => input('name'),
			'password' => md5Process(input('password')),
			'nick_name' => input('nick_name'),
			'gender' => input('gender'),
		];
		// dump($data);
		$res = $this->user->addUser($data);
		if($res)
			$this->success('注册成功！');
		else 
			$this->error('注册失败！');
	}

}