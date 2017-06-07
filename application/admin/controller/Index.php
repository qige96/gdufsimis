<?php
namespace app\admin\controller;
use think\Controller;
class Index EXTENDS Controller
{
    public function index()
    {
        return $this->fetch('');
    }
}
