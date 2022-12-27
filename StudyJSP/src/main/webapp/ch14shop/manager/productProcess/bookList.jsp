<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch14.bookshop.master.ShopBookDBBean" %>
<%@ page import="ch14.bookshop.master.ShopBookDataBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="../../etc/color.jspf" %>
<%
	String managerId = "";
	try{
		managerId = (String)session.getAttribute("managerId");
		if(managerId==null || managerId.equals("")){
			response.sendRedirect("../logon/managerLoginForm.jsp");
		}else{
%>
<%!
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	List <ShopBookDataBean> bookList = null;
	int number = 0;
	String book_kind = "";
	book_kind = request.getParameter("book_kind");
	
	ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
	int count = bookProcess.getBookCount();
	
	if(count > 0){
		bookList = bookProcess.getBooks(book_kind);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 책 목록</title>
<link href="../../etc/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	String book_kindName = "";
	if(book_kind.equals("100")){
		book_kindName = "문학";
	}else if(book_kind.equals("200")){
		book_kindName = "외국어";
	}else if(book_kind.equals("300")){
		book_kindName = "컴퓨터";
	}else if(book_kind.equals("all")){
		book_kindName = "전체";
	}
%>

	<div class="title-login">
		<h2>책 목록</h2>
	</div>
	<div class="login-wrap-Notice">
		<div class="login-html">
			<div class="Notice-group">
				<a href="../managerMain.jsp">관리자 메인으로</a> &nbsp;
				<p> <%=book_kindName%>분류의 목록 : 
					<%if(book_kind.equals("all")){%>
						<%=count%>개
					<%}else{%>
						<%=bookList.size()%>개 
					<%}%>
				</p>
			</div>
			<table>	
				<tr>
					<td align="right" bgcolor="<%=value_c %>">
						<a href="bookRegisterForm.jsp">책 등록</a>
					</td>
				</tr>
			</table>
<%
	if(count==0){
%>
			<table>	
				<tr>
					<td align="center">
						등록된 책이 없습니다.
					</td>
				</tr>
			</table>
<% }else{%>
			<table border="1">
				<tr height="30" bgcolor="<%=value_c%>">
					<td align="center" width="50">번호</td>
					<td align="center" width="50">책분류</td>
					<td align="center" width="200">제목</td>
					<td align="center" width="100">가격</td>
					<td align="center" width="100">수량</td>
					<td align="center" width="100">저자</td>
					<td align="center" width="100">출판사</td>
					<td align="center" width="100">출판일</td>
					<td align="center" width="100">책이미지</td>
					<td align="center" width="50">할인율</td>
					<td align="center" width="100">등록일</td>
					<td align="center" width="50">수정</td>
					<td align="center" width="50">삭제</td>
				</tr>
<%
	for(int i = 0; i < bookList.size(); i++){
		ShopBookDataBean book = (ShopBookDataBean)bookList.get(i);	
%>
				<tr height="30">
					<td align="center" width="50"><%=++number%></td>
					<td align="center" width="50"><%=book.getBook_kind()%></td>
					<td align="center" width="200"><%=book.getBook_title()%></td>
					<td align="center" width="100"><%=book.getBook_price()%></td>
					<td align="center" width="100">
						<%if(book.getBook_count()==0){ %>
							<font color="red"><%="일시품절" %></font>
						<%}else{ %>
							<%=book.getBook_count()%>
						<%} %>
					</td>
					<td align="center" width="100"><%=book.getAuthor()%></td>
					<td align="center" width="100"><%=book.getPublishing_com()%></td>
					<td align="center" width="100"><%=book.getPublishing_date()%></td>
					<td align="center" width="100"><%=book.getBook_image()%></td>
					<td align="center" width="50"><%=book.getDiscount_rate()%></td>
					<td align="center" width="100"><%=sdf.format(book.getReg_date())%></td>
					<td align="center" width="50">
						<a href="bookUpdateForm.jsp?book_id=<%=book.getBook_id()%>
						&book_kind=<%=book.getBook_kind()%>">
						수정</a>
					</td>
					<td align="center" width="50">
						<a href="bookDeleteForm.jsp?book_id=<%=book.getBook_id()%>
						&book_kind=<%=book.getBook_kind()%>">
						삭제</a>
					</td>
				</tr>
				<%}%>
			</table>
			<%}%>
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