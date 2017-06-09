<?php
namespace app\inner\controller;
class Index EXTENDS Base
{
    public function index()
    {
        return $this->fetch('user/index');
    }
}
