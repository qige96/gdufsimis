create table if not exists user(
	stu_id int(12) unsigned key ,
	name varchar(50),
	nick_name varchar(50),
	password varchar(32),
	gender tinyint,
	signature varchar(100)
);

create table if not exists resource(
	resource_id int unsigned key auto_increment,
	title varchar(50),
	description varchar(100),
	contributor varchar(50),
	upload_date int(11) unsigned,
	download_times int unsigned,
	download_link varchar(100)
);

create table if not exists article(
	article_id int unsigned key auto_increment,
	title varchar(50),
	content text,
	author varchar(50),
	create_date int(11)
);

create table if not exists article_imgs(
	id int unsigned key auto_increment,
	article_id int unsigned,
	img_link varchar(100)
);

create table if not exists topic(
	topic_id int unsigned key auto_increment,
	title varchar(100),
	description text,
	raiser varchar(50),
	dateline int(11) unsigned
);

create table  if not exists topic_response(
	id bigint unsigned key auto_increment,
	topic_id int unsigned,
	responsor varchar(50),
	dateline int(11) unsigned,
	response_body text
);

create table if not exists admin(
	stu_id int(12) unsigned key ,
	name varchar(50),
	nick_name varchar(50)
);