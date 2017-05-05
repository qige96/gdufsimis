<?php
namespace app\inner\controller;
use think\Controller;
class Base EXTENDS Controller
{
	public $stu_id;
	public function _initialize()
	{
		$isLogin = $this->isLogin();
		if(!$isLogin)
			return $this->redirect(url('login/index'));
	}

	public function isLogin(){
		$stu_id = $this->getLoginStuId();
		if($stu_id)
			return true;
		return false;
	}

	public function getLoginStuId(){
		if(!$this->stu_id)
			$this->stu_id = session('stu_id', '', 'inner');
		return $this->stu_id;
	}
}