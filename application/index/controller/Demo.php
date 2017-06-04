<?php
namespace app\index\controller;
use think\Controller;
class Demo EXTENDS Controller
{
	public function index()
	{
		$resource = model('Resource');
		$res_info = $resource->getAllResourceInfo();
		$this->assign('resource',$res_info);
		$page = $res_info->render();
		$this->assign('page',$page);
		return $this->fetch();
	}
}
?>