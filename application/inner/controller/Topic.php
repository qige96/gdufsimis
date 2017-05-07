<?php
namespace app\inner\controller;
use think\Controller;
class Topic EXTENDS Base
{
	public function index(){
		return $this->fetch(); //显示话题社区主页
	}
}