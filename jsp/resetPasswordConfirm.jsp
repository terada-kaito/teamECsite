<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="./js/resetPassword.js"></script>
<head>
<meta charset=UTF-8>
 <link rel="stylesheet" href="./css/resetPassword.css">
<link rel="stylesheet" type=text/css href="./css/header.css">
<link rel="stylesheet" type=text/css href="./css/jupiter.css">

<script type="text/javascript" src="./js/header.js"></script>
<title>パスワード再設定画面</title>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div class="contents">
		<h1>パスワード再設定確認画面</h1>
        </div>
		<s:form id="resetPasswordform">
			<table class="user-list">
				<tr>

					<th scope="row"><s:label value="ユーザーID" />
					<td><s:property value="userId" /></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="新しいパスワード" /></th>
					<td><s:property value="concealedPassword" /></td>
				</tr>
			</table>

		<div class="submit-btn-box">
            <s:submit value="パスワード再設定" class="btn" onclick="goResetPasswordCompleteAction();"/>
        </div>


		<div class="submit-btn-box">
			<s:submit value="戻る"  class="btn" onclick="goResetPasswordAction();"/>
		</div>
		<s:hidden id="backFlag" name="backFlag" value=""/>
		</s:form>
</html>