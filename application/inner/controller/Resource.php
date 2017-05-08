<?php
namespace app\inner\controller;
use think\Controller;
class Resource EXTENDS Base
{

	public function index(){
		// $all_resource_info = json_encode($this->getAllResourceInfo());
		$all_resource_info = $this->getAllResourceInfo();
		$this->assign('all_resource_info', $all_resource_info);
		// echo $all_resource_info;
		return $this->fetch();//显示资源社区主页
	}

	// 获取资源信息，返回json给前端，用于生成资源列表
	public function getResourceInfo()
	{
		$resource_id = input('resource_id');
		$resource_data = model('Resource')->getResourceInfo($resource_id);

		return $resource_data;
	}

	// 获取全部资源信息，返回json给前端，用于生成资源列表
	public function getAllResourceInfo()
	{
		$resource_data = model('Resource')->getAllResourceInfo();
		$page = $resource_data->render();
		$this->assign('page', $page);
		return $resource_data;
	}

	// 下载资源的逻辑，根据资源id返回资源
	public function download()
	{
		$resource_id = input('resource_id');
		dump($resource_id);
		$download_link = model('Resource')->getDownloadLink($resource_id);
		dump($download_link);
		$file = $download_link['file_path'];
		header('content-disposition:attachment; filename='.basename($file));
		header('content-length:'.filesize($file));

		readfile($file);
	}

	// 资源上传逻辑
	public function upload()
	{
		// 获取资源并保存到服务器资源路径
		$file = request()->file('file');
		$info = $file->move(ROOT_PATH . 'public' . DS . 'resources');

		if($info){
		    $upload_data = $this->getUploadData();
	    	$upload_data['title'] = input('title');
	    	$upload_data['description'] = input('description');
	    	$upload_data['file_path'] = ROOT_PATH. 'public'. DS. 'resources\\'.$info->getSaveName();
	    	// dump($upload_data);
	    	model('Resource')->addResource($upload_data);
        	
        	$this->success('上传成功'); 
	    }else{
	        // 上传失败获取错误信息
	        $this->error('上传失败'.$file->getError());
	    }

	}
	// 生成资源上传的日期
	private function getUploadData(){
		$upload_data = [
			'contributor' => session('stu','', 'inner')['nick_name'],
			'upload_date' => date('Y-m-d'),
			'download_times' => 0,
		];
		return $upload_data;
	}


}