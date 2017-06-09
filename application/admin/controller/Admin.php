<?php
namespace app\admin\controller;
use think\Controller;
class Admin EXTENDS Base
{
    public function index()
    {
    	$this->assign('admin_id',session('admin','','admin')['admin_id']);
        return $this->fetch('');
    }

    public function index2()
    {
    	$this->assign('admin_id',session('admin','','admin')['admin_id']);
        return $this->fetch('index2');
    }

    public function add()
    {
    	$data = input('post.');
    	if($data['password'] != $data['confirm_password'])
				$this->error('两次输入的密码不一致！');
		$data['password'] = md5Process($data['password']);
    	if(model('Admin')->addAdmin($data))
    		$this->success('添加管理员成功');
    	else 
    		$this->error('添加管理员失败');
    	
    }

    public function quit()
    {
    	$admin_id = input('post.admin_id');
    	dump($admin_id);
    	model('Admin')->quit($admin_id);
    }

    public function update()
    {
    	$data = input('post.');
    	if($data['password'] != $data['confirm_password'])
				$this->error('两次输入的密码不一致！');
		$data['password'] = md5Process($data['password']);
		$admin = model('Admin');
		$res = $admin->updatePassword($data);
		if($res)
			$this->success('更新成功！');
		else 
			$this->error('更新失败！'.' 更新前后并无差异·····');
    }
}