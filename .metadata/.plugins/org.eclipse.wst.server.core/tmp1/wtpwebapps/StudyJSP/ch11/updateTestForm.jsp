<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 수정</title>
</head>
<body>
	<h2>member 테이블의 레코드 수정</h2>
	<form method="post" action="updateTestPro.jsp">
		<p>
			아이디 : <input type="text" name="id" maxlength="50">
		</p>
		<p>
			패스워드 : <input type="password" name="passwd" maxlength="16">
		</p>
		<p>
			변경할 이름 : <input type="text" name="name" maxlength="10">
		</p>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>