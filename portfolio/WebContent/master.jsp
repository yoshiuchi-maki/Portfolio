<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>管理者画面</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="main">

		<h1>管理者画面</h1>
		<h2>新規作品の登録</h2>
		<p>トップ画面に作品を追加する</p>
		<br>

		<s:if test="errorMessage != null">
			<font color="red"><s:property value="errorMessage"/></font>
		</s:if>

		<s:form action="MasterAction">
			<table class="master-table">
				<tr>
					<th>言語：</th>
					<td>
						<select name="language">
							<s:iterator value="skillsList">
					 			<option value='<s:property value="language"/>'><s:property value="language"/></option>
					 		</s:iterator>
				 		</select>
					</td>

				</tr>
				<tr>
					<th>作品名：</th>
					<td><input type="text" name="productionName"/></td>
				</tr>
				<tr>
					<th>製作時間：</th>
					<td><input type="text" name="productionHours"/></td>
				</tr>
				<tr>
					<th>TOP表示する画像ファイル名：</th>
					<td><input type="text" name="thumbnailsFileName" placeholder="XXXX.jpg"/></td>
				</tr>
			</table>

			<input type="hidden" name="transitionFlg" value="6"/>

			<div class="next">
				<s:submit value="機能の追加へ" class="button"/>
			</div>
		</s:form>

	</div>

</body>
</html>