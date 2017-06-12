<?php
namespace app\index\controller;
use think\Controller;
class Index EXTENDS Controller
{
    public function index()
    {

    	$article = model('Article');
    	$articles_info = $article->getAllArticleInfo();
    	$this->assign('articles_info',$articles_info);
    	return $this->fetch();
    }
}
