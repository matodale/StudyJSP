<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 내장 객체</title>
</head>
<body>
<h2>out 내장 객체 - out.println() 활용</h2>
<%
String name = "kingdora";
out.println("출력되는 내용은 <b>" + name + "</b> 입니다.");
%>
<h2>위와 같은 내용 출력 - 표현력</h2>
<p>출력되는 내용은 <b><%=name %></b> 입니다.</p>
</body>
</html>