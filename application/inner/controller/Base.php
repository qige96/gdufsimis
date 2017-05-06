<?php
namespace app\inner\controller;
use think\Controller;

/*
实现会话机制的基础类
Login、User、Resource、Topic、Editor等类会继承这个类
然后会自动检测用户近期（24分钟内）有没有登陆过
若没有登陆，则访问User、Resource等页面时会重定向到登陆界面，要求用户先登陆
若已经登陆过，则访问Login时会重定向到User，无需在登陆
*/
class Base EXTENDS Controller
{
	public $stu_id;
	public function _initialize()//一个自动调用方法
	{
		// 若用户未曾登陆，则重定向到登陆界面
		$isLogin = $this->isLogin();
		if(!$isLogin)
			return $this->redirect(url('login/index'));
	}

	// 检测用户是否已经登陆过
	public function isLogin(){
		$stu_id = $this->getLoginStuId();
		if($stu_id)
			return true; //若存在session信息，则证明用户曾登陆过
		return false;    //若不存在session信息，则说明用户未曾登陆
	}
	
	// 获取登陆登陆用户的session信息
	public function getLoginStuId(){
		if(!$this->stu_id)
			$this->stu_id = session('stu_id', '', 'inner');//获取session信息
		return $this->stu_id;
	}
}