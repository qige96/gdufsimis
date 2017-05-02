<?php
namespace app\index\controller;
use think\Controller;
class Article EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}
}