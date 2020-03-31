<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3; URL='<s:url action="MasterAction"><s:param name="transitionFlg" value="5"/></s:url>'" />
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>登録完了</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">

		<h1>管理者画面</h1>
		<h2>登録完了</h2>

		<p>新規作品登録が完了しました。</p>
		<p>3秒後に管理者画面に自動遷移します。</p>

	</div>

</body>
</html>