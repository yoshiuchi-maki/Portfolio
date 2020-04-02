<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>確認画面</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">

		<h1>管理者画面</h1>
		<h2>入力内容の確認</h2>

		<s:form action="MasterAction">
			<table class="master-table">
				<tr>
					<th>言語：</th>
					<td><s:property value="#session.language"/></td>
				</tr>
				<tr>
					<th>作品名：</th>
					<td><s:property value="#session.productionName"/></td>
				</tr>
				<tr>
					<th>製作時間：</th>
					<td><s:property value="#session.productionHours"/></td>
				</tr>
				<tr>
					<th>TOP表示する画像ファイル名：</th>
					<td><s:property value="#session.thumbnailsFileName"/></td>
				</tr>
				<tr>
					<th>機能名：</th>
					<td><s:property value="#session.functionName"/></td>
				</tr>
				<tr>
					<th>画像ファイル名：</th>
					<td><s:property value="#session.pictureFileName"/></td>
			</table>

			<input type="hidden" name="transitionFlg" value="8"/>

			<div class="next">
				<s:submit value="登録する" class="button"/>
			</div>
		</s:form>

	</div>

</body>
</html>