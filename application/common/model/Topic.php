<?php
namespace app\common\model;

use think\Model;

class Topic extends Model
{

	public function getAllTopicsPagination()
	{
		return $this->paginate();
	}

	public function getAllTopics()
	{
		return $this->select();
	}

	public function getOneTopic($topic_id)
	{
		return $this->where('topic_id', $topic_id)->find();
	}

	public function addTopic($topic_data)
	{
		return $this->allowField(true)->insert($topic_data);
	}

	public function deleteTopic($topic_id)
	{
		return $this->where('topic_id', $topic_id)->delete();
	}

}