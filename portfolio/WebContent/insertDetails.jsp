<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>作品詳細入力</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">

		<h1>管理者画面</h1>
		<h2>機能の追加</h2>

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
					<td><input type="text" name="functionName"/></td>
				</tr>
				<tr>
					<th>画像ファイル名：</th>
					<td><input type="text" name="pictureFileName"  placeholder="XXXX.jpg"/></td>
			</table>

			<input type="hidden" name="transitionFlg" value="7"/>

			<div class="next">
				<s:submit value="確認画面へ" class="button"/>
			</div>
		</s:form>

	</div>

</body>
</html>