<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 속성 설정 및 사용</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	session.setAttribute("id", id);
	session.setAttribute("passwd", passwd);
	%>
	<p>id와 passwd 세션 속성을 설정 하였습니다.</p>
	<p>
		id속성의 값은<b>
		<%=(String) session.getAttribute("id")%></b>입니다.
	</p>
	<p>
		passwd속성의 값은<b>
		<%=(String) session.getAttribute("passwd")%></b>입니다.
	</p>

</body>
</html>