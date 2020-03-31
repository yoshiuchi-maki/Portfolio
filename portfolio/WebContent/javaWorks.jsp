<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/javaWorks.css">
<title>Java作品集</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">
		<h1>Java</h1>
		<h3>Java 学習期間：2ヵ月間</h3>

		<ul>
			<li><a href="#ecsite">ECサイト</a></li>
			<li><a href="#team">チーム開発</a></li>
		</ul>

		<div class="ecsite">
			<h2><a id="ecsite">ECサイト</a></h2>
			<h3>制作期間：2週間程度（≒50時間）</h3>
			<br>

			<h4>＜ユーザー画面での機能＞</h4>
			<p>新規ユーザー登録・ログイン・商品購入・購入履歴<p>
			<br>

			<h4>＜管理者画面での機能＞</h4>
			<p><strong>【商品】</strong>新規商品登録・商品一覧表示・全商品の削除・商品詳細表示・該当商品の削除</p>
			<p><strong>【ユーザー】</strong>ユーザー一覧表示・管理者以外の全ユーザー削除・ユーザー詳細表示・該当ユーザーの削除</p>
			<p><strong>【その他】</strong>管理者IDでログイン時には管理者画面に自動遷移</p>

			<table class="ecsite-img">
				<s:iterator value="ecsiteImagesList" status="st">
					<s:if test="#st.index%3 == 0"><tr></s:if>
						<td>
							<p><s:property value="functionName"/></p>
							<img src='<s:property value="pictureFilePath"/>/<s:property value="pictureFileName"/>'/>
						</td>
					<!-- この警告はifタグに囲まれていて開始タグが見つからなく、文法上問題ないため、無視する。 -->
					<s:if test="#st.index%3 == 2"></tr></s:if>
				</s:iterator>
			</table>
		</div>

		<div class="team">
			<h2><a id="team">チーム開発（設計書に基づく）</a></h2>
			<h3>期間：1ヵ月間<br>（商品検索機能を担当）</h3>
			<br>
			<p>8人でECサイトの11機能を分担し、商品検索機能を担当した。</p>
			<p>スケジュール立て → 設計書の内容把握 → 機能実装 → 画面実装(CSS) →単体試験(JUnit) → シナリオ試験 の順で行った。</p>
			<br>

			<table class="team-img">
				<tr>
					<td><span>検索ワードが空欄の場合、商品一覧を表示（カテゴリ選択可）</span></td>
					<td><span>検索ワードを入れて検索（複数ワードで検索可）</span></td>
				</tr>
				<tr>
					<td rowspan="3"><img src="./images/team_java1.jpg"></td>
					<td><img src="./images/team_java2.jpg"></td>
				</tr>
				<tr>
					<td><span>エラーメッセージの表示（文字数・文字種のチェック）</span></td>
				</tr>
				<tr>
					<td><img src="./images/team_error_java.jpg"></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>