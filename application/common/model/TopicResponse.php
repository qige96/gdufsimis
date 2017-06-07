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

	public function deleteResponse($response_id)
	{
		return $this->where('id', $response_id)->delete();
	}

	public function deleteReponsesByTopicId($topic_id)
	{
		return $this->where('topic_id', $topic_id)->delete();
	}

}