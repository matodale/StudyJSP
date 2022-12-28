<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../etc/color.jspf" %>
<%
String managerId = "";
try{
	managerId = (String)session.getAttribute("managerId");
	if(managerId == null || managerId.equals("")){
		response.sendRedirect("../logon/managerLoginForm.jsp");
	}else{
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		String book_kind = request.getParameter("book_kind");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 상품 삭제 Page</title>
<link href="../../etc/login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="title-login">
		<h2>책 삭제 페이지</h2>
	</div>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked>
			<label for="tab-1" class="tab">책 삭제</label>
			 <input id="tab-2"
				type="radio" name="tab" class="sign-up">
			<label for="tab-2" class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form method="post" name="delForm" 
					action="bookDeletePro.jsp?book_id=<%=book_id%>&book_kind=<%=book_kind%>" 
					onsubmit="return deleteSave()">
						<div class="group">
							<input class="button" type="submit" value="삭제하기">
						</div>
						<div class="group">
							<input class="button" type="button" value="관리자 메인으로" onclick="location.href='../managerMain.jsp'">
						</div>
						<div class="group">
							<input class="button" type="button" value="상품 목록 보기" 
							onclick="location.href='bookList.jsp?book_kind=<%=book_kind%>'">
						</div>
					</form>
				</div>
			</div>		
		</div>
	</div>
</body>
</html>
<%	
		}
	}catch(Exception e){
		e.printStackTrace();
	}	
%>