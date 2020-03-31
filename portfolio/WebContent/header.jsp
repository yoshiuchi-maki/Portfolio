<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ヘッダー</title>
</head>
<body>
	<div class="header">
		<ul>
			<li><a href='<s:url action="PortfolioAction"><s:param name="transitionFlg" value="0"/></s:url>' class="button">トップ</a></li>
			<li><a href='<s:url action="PortfolioAction"><s:param name="transitionFlg" value="1"/></s:url>' class="button">HTML/CSS</a></li>
			<li><a href='<s:url action="PortfolioAction"><s:param name="transitionFlg" value="2"/></s:url>' class="button">PHP</a></li>
			<li><a href='<s:url action="PortfolioAction"><s:param name="transitionFlg" value="3"/></s:url>' class="button">Java</a></li>
			<li><a href='<s:url action="PortfolioAction"><s:param name="transitionFlg" value="4"/></s:url>' class="button">自己紹介</a></li>
			<li><a href='<s:url action="MasterAction"><s:param name="transitionFlg" value="5"/></s:url>' class="button">新規作品の登録</a></li>
		</ul>
	</div>

</body>
</html>