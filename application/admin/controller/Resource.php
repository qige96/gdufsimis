<?php
namespace app\admin\controller;
use think\Controller;
class Resource EXTENDS Base
{

	private $resource;
	public function _initialize()
	{
		$this->resource = model('Resource');
	}

	public function index(){
		$resources = $this->resource->getAllResourceInfolist();
		$this->assign('resources',$resources);
		return $this->fetch();
	}

	public function deleteResource()
	{
		$resource_id = input('resource_id');
		$res = $this->resource->deleteResource($resource_id);
		if($res)
			$this->success('删除成功！');
		else 
			$this->error('删除失败！');
	}

	public function updateResourceInfo()
	{
		$data = [
			'resource_id' => input('resource_id'),
			'title' => input('title'),
			'description' => input('description'),
		];
		$res = $this->resource->updateResourceInfo($data);
		if($res)
			$this->success('更新成功！');
		else 
			$this->error('更新失败！');
	}
}