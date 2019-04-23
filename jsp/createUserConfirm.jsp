<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="./js/createUser.js"></script>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/createUser.css">
<link rel="stylesheet" type=text/css href="./css/header.css">
<link rel="stylesheet" type=text/css href="./css/jupiter.css">

<script type="text/javascript" src="./js/header.js"></script>
<title>ユーザー情報確認</title>
</head>
<body>

</head>
<body>

<jsp:include page="header.jsp" />

<div class="contents">
<h1>ユーザー情報入力確認画面</h1>
</div>

<s:form id="createUserform">
<table class="user-list">
<tr>
	<th scope="row"><s:label value="姓"/></th>
	<td><s:property value="familyName"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="名"/></th>
	<td><s:property value="firstName"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="姓ふりがな"/></th>
	<td><s:property value="familyNameKana"/></td>
</tr>

<tr>
<th scope="row"><s:label value="名ふりがな"/></th>
<td><s:property value="firstNameKana"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="性別"/></th>
	<td><s:property value="sex"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="メールアドレス"/></th>
	<td><s:property value="email"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="ユーザーID"/>
	<td><s:property value="userId"/>
</tr>

<tr>
	<th scope="row"><s:label value="パスワード"/>
	<td><s:property value="password"/>
</tr>
</table>

<div class="submit-btn-box">
<s:submit value="登録" class="btn" onclick="goCreateUserCompleteAction();"/>
</div>

<div class="submit-btn-box">
<s:submit value="戻る"  class="btn" onclick="goCreateUserAction();"/>
</div>

<s:hidden id="backFlag" name="backFlag" value=""/>
</s:form>

</body>
</html>