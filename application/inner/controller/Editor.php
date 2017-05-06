<?php
namespace app\inner\controller;
use think\Controller;
class Editor EXTENDS Base
{
	public function index(){
		return $this->fetch(); //显示编辑器页面
	}
}