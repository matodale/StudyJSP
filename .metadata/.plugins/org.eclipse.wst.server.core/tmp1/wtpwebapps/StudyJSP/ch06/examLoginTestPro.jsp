<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

if (id.equals("abcd") && passwd.equals("z1234")) {
	out.println("로그인 성공!<br>");
	out.println("<a href=\"examLoginTest.jsp\">뒤로가기</a>");
}else{
	out.println("로그인 실패!<br>");
	out.println("<a href=\"examLoginTest.jsp\">뒤로가기</a>");
}
%>