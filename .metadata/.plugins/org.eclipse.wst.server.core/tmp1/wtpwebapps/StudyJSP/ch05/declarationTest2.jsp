<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 예제 - 메소드 선언</title>
</head>
<body>
<h2>선언문 예제 - 메소드 선언 </h2>
<%!
String id = "Kingdora";
public String getId(){
	return id;
}
%>
<!-- 결과 변수 String타입 id를 불러온다. -->
<p>
id 변수의 내용 : <%=id %><br> 
getId() 메소드의 실행 결과 : <%=getId() %>
</p>
</body>
</html>