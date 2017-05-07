**专业网站api文档**

`/index/[page]`
网站主页，page是参数，当page为空时返回第一页

`/article/[date]/[title]`
文章的正文页面，date是文章上传的日期，title是文章的标题

`/login`
用于登录按钮，弹出登录交互窗口，登陆成功后默认跳转到话题社区

`/topics/[page]`
话题社区主页，page是参数，当page为空时返回第一页

`/user/[stu_id]`
个人中心主页

`/resources/[page]`
资源社区主页，page是参数，当page为空时返回第一页

`/editor`
文章编辑主页，主要是编辑器所在页面

`/api/article/[date]/[title]`
返回文章的内容，json格式
{
    "article_id":"1",
    "title":"信管就业前景",
    "content":"<p>信管的就业前景一片光明</p>······",
    "author":"qige",
    "time":"2017-04-23",
    "imgs":["http://gdufsimis.cn/api/1.jpg","http://gdufsimis.cn/api/2.jpg"]
}

`/api/login`
用于登录表单的登录按钮，处理post过来的登录信息

`/api/topic/[topic_id]`
返回话题的内容，json格式
{
    "topic_id":"1",
    "raiser":"qige",
    "time":"2017-04-23 18:42",
    "title":"三下乡计划书怎么写？急！！"
    "description":"准备三下乡竞投了，但是计划书怎么写啊？"
    "discussions":[
        {
            "topic_id":"1",
            "response_id":"1",
            "responser":"ray",
            "time":"2017-04-23 18:45",
            "response_body":"<p>急什么，慢慢来</p>"
        }，
        {
            "topic_id":"1",
            "response_id":"2",
            "responser":"flippedkiki",
            "time":"2017-04-23 18:45",
            "response_body":"<p>急什么，慢慢来</p>"
        }
    ]
}

`/api/user_info/[stu_id]`
返回用户的数据，json格式
{
    "stu_id":"20151002099",
    "nick_name":"祺哥"
}

`/api/change_user_setting`
用于个人中心修改个人设置的按钮，处理post过来的表单，成功后跳转到新的个人中心

`/api/resource/[1.pdf]`
用于下载按钮，返回下载的资源

`/api/publish`
用于文章编辑页面的发布按钮，点击后返回成功与否的提示

