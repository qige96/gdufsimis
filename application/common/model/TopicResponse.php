<?php
namespace app\common\model;

use think\Model;

class TopicResponse extends Model
{
	public function getResponses($topic_id)
	{
		return $this->where('topic_id', $topic_id)
					->select();
	}

	public function addResponse($response_data)
	{
		return $this->insert($response_data);
	}
}