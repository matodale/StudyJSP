<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../etc/color.jspf"%>
<%
String managerId = "";
try {
	// 로그인 정보를 받아와 세션 유지를 가능 하게 해줌
	// 관리자 ID 정보를 확인함. 틀리면 해당 페이지를 볼수가 없다.
	managerId = (String) session.getAttribute("managerId");
	if (managerId == null || managerId.equals("")) {
		response.sendRedirect("logon/managerLoginForm.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책관리</title>
<link href="../etc/login.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="title-login">
		<h2>로그인 화면</h2>
	</div>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked>
			<label for="tab-1" class="tab"><%=managerId%> 접속</label>
			<div class="login-form">
				<!-- 매니저 로그인 세션 창이 나온다. -->
				<table>
					<tr>
						<td align="center" bgcolor="<%=bar%>">상품관련 작업</td>
					</tr>
					<tr>
						<td><a href='productProcess/bookRegisterForm.jsp'>상품등록</a></td>
					</tr>
					<tr>
						<td><a href='productProcess/bookList.jsp?book_kind=all'>상품수정/삭제</a></td>
					</tr>
				</table>
				<br> <br>
				<table>
					<tr>
						<td align="center" bgcolor="<%=bar%>">구매된 상품관련 작업</td>
					</tr>
					<tr>
						<td><a href='orderedProduct/orderedList.jsp'>전체 구매목록 확인</a></td>
					</tr>
				</table>
				<br> <br>
				<form method="post" action="logon/managerLogout.jsp">
					<div class="group">
						<b>관리 작업중...</b> <br> <br> 
						<input type="submit" class="button" value="로그아웃">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>