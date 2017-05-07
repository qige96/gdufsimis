<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],
    // 'logincheck' => [
    // 	'index/Login/logincheck', ['method' => 'post'],
    // ],

    // 'admin/index' => ['admin/Index/index', ['method'=>'get'], ['index'=>'\w+']],
    // 'admin/resource' => ['admin/Resource/index',['method'=>'get'],['resource'=>'\w+']],
    // 'admin/user'=>['admin/Uer/index',['method'=>'get'],['user'=>'\w+']],
    // 'admin/topic'=>['admin/Topic/index',['method'=>'get'],['topic'=>'\w+']],

    // 'resource/download/:resource_id' => [
    //     'inner/Resource/download', ['method' => 'get'], ['resource_id' => '\d+'],
    // ],
    // 'api/get_resource_info/:resource_id' => [
    //     'inner/Resource/getResourceInfo', ['method' => 'get'], ['resource_id'=>'\d+'],
    // ],
    // 'api/get_all_resource_info' =>[
    //     'inner/Resource/getAllResourceInfo', ['method' => 'get'], 
    // ],
    // 'api/add_article' => [
    //     'index/Article/addArticle', ['method' => 'post'], 
    // ]
    // 'api/update_resource_info/:resource_id' => [
    //     'admin/Resource/updateResourceInfo', ['method' => 'get|post'], ['resource_id'=>'\d+'],
    // ],
    // 'api/delete_resource/:resource_id' => [
    //     'admin/Resource/deleteResource', ['method' => 'post'], ['resource_id'=>'\d+'],
    // ],

];
