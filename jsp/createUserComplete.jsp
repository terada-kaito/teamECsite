<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/createUser.css">
<link rel="stylesheet" type=text/css href="./css/header.css">
<link rel="stylesheet" type=text/css href="./css/jupiter.css">

<script type="text/javascript" src="./js/header.js"></script>
<title>登録完了</title>
<script type="text/javascript">
	window.onload = function(){
		var form = document.getElementById('createUserForm');
		setTimeout(function(){form.submit()},3000);
	}
</script>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="contents">
<h1>ユーザー情報入力完了画面</h1>
</div>

<div class="message">
ユーザー情報入力が完了しました。
</div>
<s:form id="createUserForm" action="LoginAction">
	<s:hidden name="userId" value="%{#session.userIdForCreateUser}" />
	<s:hidden name="password" value="%{#session.password}" />
</s:form>

</body>
</html>