<?php
namespace app\admin\controller;
use think\Controller;
class Topic EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}
}