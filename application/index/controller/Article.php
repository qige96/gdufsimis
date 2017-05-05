<?php
namespace app\index\controller;
use think\Controller;
class Article EXTENDS Controller
{
	public function index(){
		return $this->fetch();
	}

	public function getArticle()
	{
		$article = model('Article');
		$article_id = input('article_id');
		$article_data = $article->getArticle($article_id);
		return $article_data;
	}

	public function getAllArticleInfo()
	{
		$article = model('Article');
		$article_info = $article->getAllArticleInfo();
		return json_encode($article_info);
	}

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
    	
    	$res = $article->addArticle($article_data);
    	if($res)
    		return '文章发布成功！';
    	else 
    		return '文章发布失败！';
    	
    }

}