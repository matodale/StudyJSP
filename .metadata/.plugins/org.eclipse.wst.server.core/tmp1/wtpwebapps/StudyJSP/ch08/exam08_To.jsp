<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
<h2>수행결과</h2>
<p>아이디 : <%=id %></p>
<p>패스워드 : <%=passwd %></p>