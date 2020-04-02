<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>自己紹介</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">
		<h1>自己紹介</h1>
		<div class="strength">
			<h2>強み</h2>
			<p><strong>問題解決力</strong>：前職での経験から、迅速かつ論理的に原因を突き止めるのが得意</p>
			<p><strong>英語力</strong>：言語学習が得意なので、プログラミングの学習速度も比較的速い</p>
			<p><strong>コミュニケーション力</strong>：留学時代に培い、初対面の人でもすぐに打ち解けられる</p>
			<br>
		</div>

		<h2>これまでの経歴</h2>
		<table class="chronicle-table">
			<tr>
				<th>1995</th>
				<td>3歳の頃から英語を始め、<strong>学生時代はひたすら英語を勉強</strong><br>
					(⇒言語を通して新しい世界が広がることが単純に楽しかったため)</td>
			</tr>
			<tr>
				<th>2011</th>
				<td>受験期も英語を頑張り、英語科に入学</td>
			</tr>
			<tr>
				<th>2014</th>
				<td><strong>10ヵ月間のアメリカ留学</strong>を経験</td>
			</tr>
			<tr>
				<th>2016</th>
				<td>卒業後は、数年以内に海外に行きたいという思いがあり、<br>
				その間に<strong>事務や塾講師</strong>を経験</td>
			</tr>
			<tr>
				<th>2019</th>
				<td>社会人経験を積むうちに、まだまだ挑戦していないことがたくさんあると感じ始める</td>
			<tr>
				<th>2020</th>
				<td>一番興味を惹かれたのがプログラミングだったため、学び始める</td>
			</tr>
			<tr>
				<th>現在</th>
				<td><strong>今までの経験や自分の性格を生かす</strong>ことができる分野で、成長を実感中</td>
			</tr>
		</table>

		<div class="hobby">
			<h2>趣味 / 好きなこと</h2>
			<p>旅行：友人を訪ねて、国内では京都や沖縄など、長期休みには韓国やアメリカへ</p>
			<p>人と知り合うこと：新しいことを知ったり、人と喋ったりすることが好きなため</p>
			<br>
		</div>

		<h2>GitHubアカウント</h2>
		<p><a href="https://github.com/yoshiuchi-maki" target="_blank">https://github.com/yoshiuchi-maki</a></p>
		<br>
	</div>

</body>
</html>