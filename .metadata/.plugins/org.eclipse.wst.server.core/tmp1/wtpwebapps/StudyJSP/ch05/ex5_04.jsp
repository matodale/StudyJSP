<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정</title>
</head>
<body>
<%
String id;
String passwd;
int age;

id = "test";
passwd = "testpass";
age = 20;
%>
<p>
회원정보<br>
<%=id %>님의 비밀번호는 <%=passwd %>이고, 나이는 <%=age %>입니다.
</p>
</body>
</html>