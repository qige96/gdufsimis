<?php
namespace app\inner\controller;
use think\Controller;
class Resource EXTENDS Controller
{

	private $resource;
	public function _initialize()
	{
		$this->resource = model('Resource');
	}

	public function index(){
		return $this->fetch();
	}

	public function getResourceInfo()
	{
		$resource_id = input('resource_id');
		$resource_data = $this->resource->getResourceInfo($resource_id);
		return $resource_data;
	}

	public function getAllResourceInfo()
	{
		$resource_data = $this->resource->getAllResourceInfo();
		return $resource_data;
	}

	public function download()
	{
		$resource_id = input('resource_id');
		$download_link = $this->resource->getDownloadLink($resource_id);
		$file = $download_link[0]['file_path'];
		header('content-disposition:attachment; filename='.basename($file));
		header('content-length:'.filesize($file));

		readfile($file);
	}

	public function upload()
	{
		$file = request()->file('file');
		$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');

		if($info){
		    $upload_data = $this->getUploadData();
	    	$upload_data['title'] = input('title');
	    	$upload_data['description'] = input('description');
	    	$upload_data['file_path'] = ROOT_PATH. 'public'. DS. 'uploads\\'.$info->getSaveName();
	    	// dump($upload_data);
	    	$this->resource->addResource($upload_data);
        	
        	$this->success('上传成功'.$info->getSaveName()); 
	    }else{
	        // 上传失败获取错误信息
	        $this->error('上传成功'.$file->getError());
	    }

	}

	private function getUploadData(){
		$upload_data = [
			'upload_date' => time(),
			'download_times' => 0,
		];
		return $upload_data;
	}


}