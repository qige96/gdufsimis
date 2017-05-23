<?php
namespace app\index\controller;
use think\Controller;
class Article EXTENDS Controller
{
	public function index(){

		$article_id = input('article_id');
		$article_data = $this->getArticle($article_id);
		$this->assign('article_data',$article_data);
		$this->assign('article_id',$article_id);
		return $this->fetch(); //显示文章内容页面
	}

	// 获取文章信息，返回json给前端，用于网站生成文章内容页

	public function getArticle()
	{
		$article = model('Article');
		$article_id = input('article_id');
		$article_data = $article->getArticle($article_id);
		return $article_data;
	}

	// 获取全部文章信息，返回json给前端，用于网站主页生产文章列表
	public function getAllArticleInfo()
	{
		$article = model('Article');
		$article_info = $article->getAllArticleInfo();
		return json_encode($article_info);
	}

	// 添加新文章入库
	public function addArticle()
    {
    	$article = model('Article');
    	$article_data = [
    		'title' => input('title'),
    		'description' => input('description'),
    		'content' => input('content'),
    		'create_date' => date('Y-m-d'),
    		'author' => 'imis2015',
    	];
    	
    	// 根据操作结果返回响应
    	//此方法还需要修改
    	$res = $article->addArticle($article_data);
    	if($res)

    		$this->success('文章发布成功！');
    	else 
    		$this->error('文章发布失败！');

    	
    }

}