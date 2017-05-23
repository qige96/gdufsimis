-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-18 04:20:07
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gdufsimis`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `stu_id` bigint(12) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`stu_id`, `name`, `nick_name`) VALUES
(20151002099, 'qige', 'qige');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `content` text,
  `author` varchar(50) DEFAULT NULL,
  `create_date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`article_id`, `title`, `description`, `content`, `author`, `create_date`) VALUES
(1, '编辑器', '介绍编辑器语法', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-04'),
(3, '你好', '你好', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-04'),
(4, '测试', '测试一下文章编辑和发布逻辑', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-05'),
(5, 'ceshi', 'ceshi', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-05'),
(6, '测试', '测试', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-05'),
(7, '测试', '测试', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-05'),
(8, '又一个测试', '一个测试，看看咋样', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6>', 'imis2015', '2017-05-16'),
(9, '又是一个测试', '测试啦', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2>', 'imis2015', '2017-05-16'),
(10, '第十个测试', '这是第十个测试', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre>', 'imis2015', '2017-05-16'),
(11, '测试11号', '测试啦！！！！！！', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2>', 'imis2015', '2017-05-16'),
(12, '测试12', '测试12', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-16'),
(13, '测试13', '测试13', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-16'),
(14, '测试又来啦', '还是一个测试', '<h2 id=" 标题"> 标题</h2><h1 id=" 一级标题</div>"> 一级标题&lt;/div&gt;</h1><h2 id=" 二级标题</div>"> 二级标题&lt;/div&gt;</h2><h3 id=" 三级标题</div>"> 三级标题&lt;/div&gt;</h3><h4 id=" 四级标题</div>"> 四级标题&lt;/div&gt;</h4><h5 id=" 五级标题</div>"> 五级标题&lt;/div&gt;</h5><h6 id=" 六级标题</div>"> 六级标题&lt;/div&gt;</h6><h2 id=" 无序列表"> 无序列表</h2><ul class="mdeditor-ul"><li>1&lt;/div&gt;</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li><li>1</li><li>2</li><li>3</li></ul><h2 id=" 有序列表"> 有序列表</h2><ol class="mdeditor-ol"><li>1&lt;/div&gt;</li><li>2</li><li>3</li></ol><h3 id=" 引用"> 引用</h3><blockquote class="mdeditor-blockquote"><ol class="mdeditor-ol"><li>a&lt;/div&gt;</li><li>b&lt;/div&gt;</li><li>c&lt;/div&gt;</li></ol><p>段落</p></blockquote><h2 id=" 图片"> 图片</h2><p><img class="mdeditor-img" alt="前端路迹" src="http://www.qinshenxue.com/static/img/logo.jpg"></p><h2 id=" 链接"> 链接</h2><p><a href="迹" target="_blank">前端路迹</a></p><h2 id=" 行内代码"> 行内代码</h2><p>行内代码展示：<span class="mdeditor-inline-code">npm install</span></p><h2 id=" 粗体"> 粗体</h2><p>粗体展示：<b>粗体</b></p><h2 id=" 斜体"> 斜体</h2><p>斜体展示: <i>斜体</i></p><h2 id=" 表格"> 表格</h2><table class="mdeditor-table"><tbody><tr><th style="text-align:center">1</th><th style="text-align:center">2</th><th style="text-align:center">3</th><th style="text-align:center">4</th></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr><tr><td style="text-align:center">1</td><td style="text-align:center">2</td><td style="text-align:center">3</td><td style="text-align:center">4</td></tr></tbody></table><h2 id=" 代码块"> 代码块</h2><pre class="mdeditor-code"><code class="css">.mdeditor {\n    float: left;\n    width: 50%;\n    line-height: 1.5em;\n    resize: none;\n    outline: none;\n    border: 1px solid #ccc;\n    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);\n}\n</code></pre><pre class="mdeditor-code"><code class="xml">&lt;ul class="mdeditor-ol"&gt;\n    &lt;li&gt;原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre><pre class="mdeditor-code"><code class="javascript">var a=1,b=2; // 注释\nfunction test(){\n	return "原创markdown编辑器，基于textarea，同步预览html，不依赖任何插件，使用简单。";\n}\n</code></pre><h2 id=" 内嵌页（自定义语法，私有语法）"> 内嵌页（自定义语法，私有语法）</h2><p>$<a href="0" target="_blank">200</a></p>', 'imis2015', '2017-05-16');

-- --------------------------------------------------------

--
-- 表的结构 `article_imgs`
--

CREATE TABLE IF NOT EXISTS `article_imgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned DEFAULT NULL,
  `img_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `contributor` varchar(50) DEFAULT NULL,
  `upload_date` varchar(11) DEFAULT NULL,
  `download_times` int(10) unsigned DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `resource`
--

INSERT INTO `resource` (`resource_id`, `title`, `description`, `contributor`, `upload_date`, `download_times`, `file_path`) VALUES
(1, '信管专业培养方案', '介绍了信管专业的课程体系，培养计划等信息', 'qige96', '2017-05-08', 0, 'D:\\softwares\\wamp\\www\\gdufsimis\\public\\resources\\20170508\\750cd97e197653bfedb96ad9efdb0909.pdf'),
(2, '三下乡', '15级三下乡的相关文件', 'qige96', '2017-05-08', 0, 'D:\\softwares\\wamp\\www\\gdufsimis\\public\\resources\\20170508\\3e5b5f7a8d11367cc54ba05180bbb22a.zip'),
(3, '五四', '关于五四评选的一些文档', 'qige96', '2017-05-08', 0, 'D:\\softwares\\wamp\\www\\gdufsimis\\public\\resources\\20170508\\57d108045d5b69d2861fdf5ee5fdca31.rar');

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `raiser` varchar(50) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `topic`
--

INSERT INTO `topic` (`topic_id`, `title`, `description`, `raiser`, `date`) VALUES
(1, '三下乡', '三下乡是什么？', 'qige96', '2017-05-17 18:45:50'),
(2, '团日活动', '团日活动是什么', 'qige96', '2017-05-17 18:46:19');

-- --------------------------------------------------------

--
-- 表的结构 `topic_response`
--

CREATE TABLE IF NOT EXISTS `topic_response` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `responder` varchar(50) DEFAULT NULL,
  `response_date` varchar(20) DEFAULT NULL,
  `response_body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `topic_response`
--

INSERT INTO `topic_response` (`id`, `topic_id`, `responder`, `response_date`, `response_body`) VALUES
(1, 1, 'qige96', '2017-05-17 19:27:37', '一个赚志愿时的项目'),
(2, 1, 'qige96', '2017-05-17 19:28:26', '一个社会实践项目'),
(3, 2, 'qige96', '2017-05-17 19:36:00', '团结班集体的一起玩的活动'),
(4, 1, 'qige96', '2017-05-17 22:46:33', '玩的'),
(5, 1, 'qige96', '2017-05-18 00:34:39', '后勤做饭');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `stu_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `gender` char(4) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`stu_id`, `name`, `nick_name`, `password`, `gender`, `signature`) VALUES
(20151002010, '朱瑞祺', 'qi', '102359a2ea08211f775dba8a37500daa', '男', 'qi'),
(20151002099, '朱瑞祺', 'qige96', '102359a2ea08211f775dba8a37500daa', '男', '哈哈哈');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
