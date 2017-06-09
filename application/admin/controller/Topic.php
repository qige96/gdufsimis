<?php
namespace app\admin\controller;
use think\Controller;

class Topic EXTENDS Base
{
	private $topic ;
	private $topic_response ;

	public function _initialize()
	{
		$this->topic = model('Topic');
		$this->topic_response = model('TopicResponse');
	}

	#话题管理主页，显示话题
	public function index(){
		$topic_data = $this->topic->getAllTopicsPagination();
		$page = $topic_data->render();
		$this->assign('topics',$topic_data);
		$this->assign('page',$page);
		return $this->fetch();
	}

	// 删除一个话题，连同所有回答
	public function deleteTopic($topic_id)
	{
		if(true){
			$res1 = $this->topic->deleteTopic($topic_id);
			$res2 = $this->topic_response->deleteReponsesByTopicId($topic_id);
			if($res1 && $res2)
				$this->success('删除成功！');
			elseif ($res1)
				$this->error('删除回答是发生错误！');
			else 
				$this->error('删除话题时发生错误！');
		}
		else {
			$this->error('不允许使用get方法！');
		}
	}

	// 显示某个话题所有回复
	public function detail($topic_id)
	{
		$responses = $this->topic_response->getResponses($topic_id);
		// dump($responses);
		$this->assign('responses',$responses);
		return $this->fetch('detail');
	}

	// 删除某个话题的一个回复
	public function deleteResponse($response_id)
	{
		return $this->topic_response->deleteResponse($response_id);
	}
}