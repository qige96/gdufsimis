<?php
namespace app\common\model;

use think\Model;

class Article extends Model
{
	public function addArticle($article_data)
	{
		return $this->save($article_data);
	}

	public function getArticle($article_id)
	{
		return $this->where('article_id', $article_id)
					->find();
	}

	public function getAllArticleInfo()
	{
		return $this->field('article_id,title,description')
					->paginate('3');
	}
}