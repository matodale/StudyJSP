<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include ActionTag Test</title>
</head>
<body>
<h2>include ActionTag Test</h2>
<form method="post" action="includeTest.jsp">
	<p>이름 : <input type="text" name="name"></p>
	<p>페이지이름 : <input type="text" name="pageName" value="includedTest"></p>
	<input type="submit" value="입력완료">
</form>
</body>
</html>