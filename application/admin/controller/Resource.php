<?php
namespace app\admin\controller;
use think\Controller;
class Resource EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}
}