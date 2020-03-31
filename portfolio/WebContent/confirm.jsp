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

			<table class="master-table">
				<tr>
					<th>言語：</th>
					<td><s:property value="skillsId"/></td>
				</tr>

				<tr>
					<th>作品名：</th>
					<td><s:property value="productionName"/></td>
				</tr>

				<tr>
					<th>製作時間：</th>
					<td><s:property value="productionHours"/></td>
				</tr>

				<tr>
					<th>TOP表示する画像ファイル名：</th>
					<td><s:property value="thumbnailsFileName"/></td>
				</tr>

				<tr>
					<th>機能名：</th>
					<td><s:property value="functionName"/></td>
				</tr>

				<tr>
					<th>画像ファイル名：</th>
					<td><s:property value="pictureFileName"/></td>
				</tr>

			</table>

			<s:form action="MasterAction">
			<input type="hidden" name="skillsId" value='<s:property value="skillsId"/>'/>
			<input type="hidden" name="productionName" value='<s:property value="productionName"/>'/>
			<input type="hidden" name="productionHours" value="<s:property value="productionHours"/>"/>
			<input type="hidden" name="thumbnailsFileName" value="<s:property value="thumbnailsFileName"/>"/>
			<input type="hidden" name="transitionFlg" value="8"/>
			<div class="next">
				<s:submit value="登録する" class="button"/>
			</div>
			</s:form>

	</div>

</body>
</html>