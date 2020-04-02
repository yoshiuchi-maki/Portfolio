set names utf8;
set foreign_key_checks = 0;

drop database if exists portfolio;
create database if not exists portfolio;

use portfolio;

create  table skills(
	id int primary key not null auto_increment,
	logo_file_path varchar(255) not null,
	logo_file_name varchar(255) not null,
	language varchar(255) not null,
	study_hours varchar(255) not null
);

create table works(
	id int primary key not null auto_increment,
	skills_id int not null,
	production_name varchar(255) not null,
	production_hours varchar(255) not null,
	thumbnail_file_path varchar(255) not null,
	thumbnail_file_name varchar(255) not null,
	foreign key(skills_id) references skills(id)
);

create table function(
	id int primary key not null auto_increment,
	works_id int not null,
	function_name varchar(255) not null,
	foreign key(works_id) references works(id)
	);

create table images(
	id int primary key not null auto_increment,
	function_id int not null,
	picture_file_path varchar(255) not null,
	picture_file_name varchar(255) not null,
	foreign key(function_id) references function(id)
	);

set foreign_key_checks= 1;

INSERT INTO skills(logo_file_path, logo_file_name, language, study_hours) VALUES
	("./images", "html_css_logo.jpg", "HTML/CSS", "3日間"),
	("./images", "javascript_logo.jpg", "JavaScript", "3日間"),
	("./images", "php_logo.jpg", "PHP", "2週間"),
	("./images", "java_logo.jpg", "Java", "2ヵ月間"),
	("./images", "mysql_logo.jpg", "MySQL", "1週間");


INSERT INTO works(skills_id, production_name, production_hours, thumbnail_file_path, thumbnail_file_name) VALUES
	(1, "ブログ", "3時間", "./images", "blog.jpg"),
	(3, "お問合わせフォーム", "5時間", "./images", "contactform.jpg"),
	(3, "掲示板", "3時間", "./images", "keijiban_comments.jpg"),
	(3, "会員登録・ログイン・マイページ機能", "10時間", "./images", "mypage_php.jpg"),
	(4, "ECサイト", "2週間", "./images", "mypage_java.jpg"),
	(4, "チーム開発（設計書に基づく）", "1ヵ月間", "./images", "team_java1.jpg");

INSERT INTO function(works_id, function_name) VALUES
	(1, "ブログ"),
	(2, "入力画面"),
	(2, "内容確認画面"),
	(2, "送信完了画面"),
	(3, "コメント入力画面"),
	(3, "コメント内容表示画面"),
	(4, "会員登録 入力画面"),
	(4, "会員登録 確認画面"),
	(4, "ログイン画面"),
	(4, "ログイン画面 入力エラー"),
	(4, "マイページ表示画面"),
	(4, "マイページ編集画面"),
	(5, "ログイン機能"),
	(5, "商品購入機能"),
	(5, "購入履歴機能"),
	(5, "商品一覧表示・全商品の削除機能"),
	(5, "商品詳細表示・該当商品の削除機能"),
	(5, "管理者以外の全ユーザー削除機能"),
	(6, "検索ワードが空欄の場合、商品一覧を表示（カテゴリ選択可）"),
	(6, "検索ワードを入れて検索（複数ワードで検索可）"),
	(6, "エラーメッセージの表示（文字数・文字種のチェック）");


INSERT INTO images(function_id, picture_file_path, picture_file_name) VALUES
	(1, "./images", "blog.jpg"),
	(2, "./images", "contactform.jpg"),
	(3, "./images", "contactform_confirm.jpg"),
	(4, "./images", "contactform_complete.jpg"),
	(5, "./images", "keijiban.jpg"),
	(6, "./images", "keijiban_comments.jpg"),
	(7, "./images", "register_php.jpg"),
	(8, "./images", "register_confirm_php.jpg"),
	(9, "./images", "login_php.jpg"),
	(10, "./images", "error_php.jpg"),
	(11, "./images", "mypage_php.jpg"),
	(12, "./images", "hensyu_php.jpg"),
	(13, "./images", "user_create_java.jpg"),
	(14, "./images", "buy_item_java.jpg"),
	(15, "./images", "mypage_java.jpg"),
	(16, "./images", "item_list_java.jpg"),
	(17, "./images", "item_details_java.jpg"),
	(18, "./images", "user_delete_java.jpg"),
	(19, "./images", "team_java1.jpg"),
	(20, "./images", "team_java2.jpg"),
	(21, "./images", "team_error_java.jpg");