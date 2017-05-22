<?php
namespace app\inner\controller;
use think\Controller;
class Topic EXTENDS Base
{
	public function index(){
		$all_topics = $this->getAllTopicsPagination();
		$page = $all_topics->render();
		$this->assign('all_topics',$all_topics);
		$this->assign('page',$page);
		return $this->fetch(); //显示话题社区主页
	}

	public function raiseTopic()
	{
		return $this->fetch();
	}

	public function getOneTopic()
	{
		$topic_id = input('topic_id');
		return model('Topic')->getOneTopic($topic_id);
	}

	public function getAllTopicsPagination()
	{
		return model('Topic')->getAllTopicsPagination();
	}

	public function getAllTopics()
	{
		return json_encode(model('Topic')->getAllTopics());
	}

	public function addTopic()
	{
		if(request()->isPost()){
			$topic_data = input("post.");
			$topic_data['raiser'] = session('stu', '', 'inner')['nick_name'];
			$topic_data['date'] = date('Y-m-d H:i:s');
			if( model('Topic')->addTopic($topic_data))
				$this->success('话题发起成功');
			else {
				$this->error('话题发起失败');
			}
		}else
			return "请用post方法发起话题";
	}

	public function addResponse()
	{
		$responses_data = input('post.');
		$responses_data['responder'] = session('stu', '', 'inner')['nick_name'];
		$responses_data['response_date'] = date('Y-m-d H:i:s');

		if(model('TopicResponse')->addResponse($responses_data))
			$this->success('回复话题成功！');
		else
			$this->error('回复话题失败！');
	}

	public function getDetail()
	{
		$topic_id = input('topic_id');
		$topic_data = $this->getOneTopic($topic_id);
		$responses_data = model('TopicResponse')->getResponses($topic_id);
		$this->assign('topic_data',$topic_data);
		$this->assign('responses_data',$responses_data);
		$number = 1234;
		$this->assign('var',$number);
		return $this->fetch('detail');
	}
}