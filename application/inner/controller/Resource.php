<?php
namespace app\inner\controller;
use think\Controller;
class Resource EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}
}