<?php
namespace app\common\model;

use think\Model;

class Resource extends Model
{
	public function getResourceInfo($resource_id)
	{
		return $this->where('resource_id', $resource_id)
					->find();
	}

	public function getAllResourceInfo()
	{
		return $this->find();
	}

	public function addResource($data)
	{
		return $this->save($data);
	}

	public function updateResourceInfo($data)
	{
		return $this->update($data);
	}

	public function deleteResource($resource_id)
	{
		return $this->where('resource_id', '=', $resource_id)->delete();
	}

	public function getDownloadLink($resource_id){
		return $this->where('resource_id', $resource_id)
			->field('file_path')
			->select();
	}
}