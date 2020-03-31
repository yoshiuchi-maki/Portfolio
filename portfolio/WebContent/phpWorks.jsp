<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/phpWorks.css">
<title>PHP作品集</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">
		<h1>PHP</h1>
		<h3>PHP 学習期間：2週間<br>（MySQLと並行して学習）</h3>

		<ul>
			<li><a href="#contactForm">お問合わせフォーム</a></li>
			<li><a href="#keijiban">掲示板</a></li>
			<li><a href="#mypage">会員登録・ログイン・マイページ機能</a></li>
		</ul>

		<div class="contactForm">
			<h2><a id="contactForm">お問合わせフォーム</a></h2>
			<h3>制作期間：1日程度（≒5時間）</h3>
			<table class="contactForm-img">
				<tr>
					<s:iterator value="contactFormImagesList">
						<td><s:property value="functionName"/></td>
					</s:iterator>
				</tr>
				<tr>
					<s:iterator value="contactFormImagesList">
						<td><img src='<s:property value="pictureFilePath"/>/<s:property value="pictureFileName"/>'/></td>
					</s:iterator>
				</tr>
			</table>
		</div>

		<h2><a id="keijiban">掲示板（コメントの投稿）</a></h2>
		<h3>制作時間：3時間程度</h3>
		<table class="keijiban-img">
			<tr>
				<s:iterator value="keijibanImagesList">
					<td><s:property value="functionName"/></td>
				</s:iterator>
			</tr>
			<tr>
				<s:iterator value="keijibanImagesList">
					<td><img src='<s:property value="pictureFilePath"/>/<s:property value="pictureFileName"/>'/></td>
				</s:iterator>
			</tr>
		</table>

		<div class="mypage">
			<h2><a id="mypage">会員登録・ログイン・マイページ機能</a></h2>
			<h3>制作期間：2日程度（≒10時間）</h3>
			<br>

			<table class="mypage-img">
				<s:iterator value="mypageImagesList" status="st">
					<s:if test="#st.index%2 == 0"><tr></s:if>
						<td>
							<p><s:property value="functionName"/></p>
							<img src='<s:property value="pictureFilePath"/>/<s:property value="pictureFileName"/>'/>
						</td>
					<s:if test="#st.index%2 == 1"><tr></s:if>
				</s:iterator>
			</table>
		</div>
	</div>

</body>
</html>