<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
String pageName = request.getParameter("pageName");
pageName += ".jsp";
%>
<p>
	포함하는 페이지 <b>includeTest.jsp</b> 입니다.
</p>
<hr>
<jsp:include page="<%=pageName%>" flush="false" />
includeTest.jsp 의 나머지 내용입니다.
