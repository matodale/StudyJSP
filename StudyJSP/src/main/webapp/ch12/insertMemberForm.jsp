<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입 폼</h2>
	<form method="post" action="insertMemberPro.jsp">
		<p>아이디 : <input type="text" name="id" maxlength="50"></p>
		<p>패스워드 : <input type="password" name="passwd" maxlength="16"></p>
		<p>이름 : <input type="text" name="name" maxlength="10"></p>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>