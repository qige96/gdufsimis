<?php
namespace app\admin\controller;
use think\Controller;
class Index EXTENDS Base
{
    public function index()
    {
        return $this->fetch('');
    }
}
