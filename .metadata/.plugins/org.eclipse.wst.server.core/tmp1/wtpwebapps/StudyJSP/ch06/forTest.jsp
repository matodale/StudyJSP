<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
String strArray[] = { "Java", "JSP", "Android", "HTML5" };
// 배열 value 을 이용한 for 반복문 
for (int i = 0; i < strArray.length; i++) {
	out.println("strArray[" + i + "]의 값은 : " + strArray[i] + "<br>");
}
%>