<?php
namespace app\index\controller;
use think\Controller;
class Index EXTENDS Controller
{
    public function index()
    {

    	$article = model('Article');
    	$articles_info = $article->getAllArticleInfo();
    	$page = $articles_info->render();
    	$this->assign('articles_info',$articles_info);
    	$this->assign('page',$page);
    	return $this->fetch();
    }
}
