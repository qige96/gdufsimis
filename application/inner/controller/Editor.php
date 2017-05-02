<?php
namespace app\inner\controller;
use think\Controller;
class Editor EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}
}