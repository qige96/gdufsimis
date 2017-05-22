<?php
namespace app\inner\controller;
use think\Controller;
class User EXTENDS Base
{
	
	public function index(){
		$stu = session('stu', '', 'inner');
		$this->assign('stu',$stu);
		return $this->fetch(); //显示用户猪心主页
	}

	// 修改用户信息的逻辑
	//当密码框为空时不修改密码
	//当昵称框和个性签名框为空时，将他们设为空
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
		$user = model('User');
		$res = $user->updateUser($data);
		if($res)
			$this->success('更新成功！');
		else 
			$this->error('更新失败！'.' 更新前后并无差异·····');
	}

}