<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>로그인 폼</h2>
	<form method="post" action="sessionLoginPro.jsp">
		<p>아이디 : <input type="text" name="id" maxlength="50"></p>
		<p>패스워드 : <input type="password" name="passwd" maxlength="16"></p>
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.href='insertMemberForm.jsp'">
	</form>
</body>
</html>