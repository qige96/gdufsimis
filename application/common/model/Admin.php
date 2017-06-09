<?php
namespace app\common\model;

use think\Model;

class Admin extends Model
{
	public function getInfoByAdminId($admin_id)
	{
		return $this->where('admin_id', $admin_id)->find();
	}

	public function getAdminPassword($user_id){
		return $this->where('admin_id', $user_id)
					->field('password')
					->find();
	}

	public function addAdmin($data){
		return $this->allowField(true)->save($data);
	}

	public function quit($admin_id)
	{
		return $this->where('admin_id', $admin_id)->delete();
	}

	public function updatePassword($data)
	{
		return $this->where('admin_id', $data['admin_id'])
					->update(['password' => $data['password']]);	
	}
}