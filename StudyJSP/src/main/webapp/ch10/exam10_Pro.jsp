<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%--여기서 자바빈파일 연동 --%>
<jsp:useBean id="exBean" class="ex.ch10.ExBean">
	<jsp:setProperty name="exBean" property="id"/>
	<jsp:setProperty name="exBean" property="passwd"/>
	<jsp:setProperty name="exBean" property="number"/>
</jsp:useBean>
<%--여기서 자바빈파일 데이터를 결과 출력함. --%>
<h2>입력한 정보 표시</h2>
<p>아이디 : <jsp:getProperty name="exBean" property="id"/></p>
<p>패스워드 : <jsp:getProperty name="exBean" property="passwd"/></p>
<p>좋아하는 숫자 : <jsp:getProperty name="exBean" property="number"/></p>