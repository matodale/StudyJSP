<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%session.invalidate();%>
<%--세션의 모든 속성을 삭제 할때는 session 객체의 invalidate() 메소드를 사용한다. --%>
<script>
	alert("로그아웃 되었습니다.");
	location.href="sessionMain.jsp";
</script>