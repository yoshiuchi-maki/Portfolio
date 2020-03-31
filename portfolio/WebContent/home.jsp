<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>トップ画面</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">

		<h1>Skills / Works</h1>
		<div class="skills">
			<table class="skills-table">
				<tr>
					<td><strong>スキル</strong></td>
					<td><strong>学習期間</strong></td>
				</tr>
				<s:iterator value="skillsList">
					<tr>
						<td><img src='<s:property value="logoFilePath"/>/<s:property value="logoFileName"/>'/></td>
						<td><s:property value="studyHours"/></td>
					</tr>
				</s:iterator>
			</table>

			<table class="works-table">
				<tr>
					<td><strong>言語</strong></td>
					<td><strong>作品タイトル</strong></td>
					<td><strong>製作時間の目安</strong></td>
					<td><strong>詳細へ</strong></td>
				</tr>
				<s:iterator value="worksList">
					<tr>
						<td><s:property value="language"/></td>
						<td><s:property value="productionName"/></td>
						<td><s:property value="productionHours"/></td>
						<td>
							<a href =
								'<s:url action="PortfolioAction">
									<s:param name="skillsTransitionFlg" value="%{skillsId}"/>
								</s:url>'>
								<img src='<s:property value="thumbnailFilePath"/>/<s:property value="thumbnailFileName"/>'/>
							</a>
						</td>
					</tr>
				</s:iterator>
			</table>
		</div>

		<div class="about">
			<h1>About Me</h1>
			<table class="about-table">
				<tr>
					<th>プログラミング学習期間：</th>
					<td>3ヵ月（2020年1月から）</td>
				</tr>
				<tr>
					<th>学習中に心掛けていること：</th>
					<td>エラーは自分で解決すること、不明点はわかるまで必ず調べること</td>
				</tr>
				<tr>
					<th>きっかけ：</th>
					<td>前職で社内システムを毎日使用するユーザー側だったが、小さな不便を感じることが多々あった</td>
				</tr>
				<tr>
					<th></th>
					<td>⇒システムを作る側を知って、思ったことを自ら実現できたら面白そうだと感じたため</td>
				</tr>
				<tr>
					<th>得意 / 強み：</th>
					<td>英語・行動力(変化に強い)・独学する力</td>
				</tr>
			</table>
		</div>

	</div>

</body>
</html>