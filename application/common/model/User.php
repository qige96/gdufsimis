<?php
namespace app\common\model;

use think\Model;

class User extends Model
{
	public function getUserPassword($user_id){
		return $this->where('stu_id', $user_id)
					->field('password')
					->find();
	}

	public function addUser($data){
		return $this->save($data);
	}

	public function updateUser($data){
		if($data['password'] != md5Process('')) //判断密码框是否为空
			return $this->allowField(true)
						->save($data,['stu_id' => $data['stu_id']]);
		else 
			return $this->allowField(['nick_name', 'signature'])
						->save($data,['stu_id' => $data['stu_id']]);
					
	}
}