<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습 - import 속성</title>
</head>
<body>
<h2>page 디렉티브 연습 - import 속성</h2>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	
%>
<%=now %>

</body>
</html>