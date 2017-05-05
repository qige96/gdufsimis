<?php
namespace app\inner\controller;
use think\Controller;
class Topic EXTENDS Base
{
	public function index(){
		return $this->fetch();
	}
}