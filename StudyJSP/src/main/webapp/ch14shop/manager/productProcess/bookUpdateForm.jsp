<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="ch14.bookshop.master.ShopBookDBBean" %>
<%@	page import="ch14.bookshop.master.ShopBookDataBean" %>
<%@ include file="../../etc/color.jspf"%>
<%
	String managerId = "";
	try {
		managerId = (String) session.getAttribute("managerId");
		if (managerId == null || managerId.equals("")) {
			response.sendRedirect("../logon/managerLoginForm.jsp");
		} else {
%>
<%
			int book_id = Integer.parseInt(request.getParameter("book_id"));
			String book_kind = request.getParameter("book_kind");
			try{
				ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
				ShopBookDataBean book = bookProcess.getBook(book_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<link href="../../etc/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../etc/script.js"></script>
</head>
<body>
	<div class="title-login">
		<h2>상품 수정</h2>
	</div>
	<div class="login-wrap-Register">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked>
			<label for="tab-1" class="tab">책 수정</label>
			 <input id="tab-2"
				type="radio" name="tab" class="sign-up">
			<label for="tab-2" class="tab"></label>	
			<div class="login-form">
				<div class="sign-in-htm">
					<form method="post" name="writeform" action="bookUpdatePro.jsp" enctype="multipart/form-data">
						<div class="group">
							<label for="분류 선택" class="label"> 
								분류 선택
							</label>
							<select name="book_kind">
								<option value="100"<%if(book.getBook_kind().equals("100")){%>selected<%}%>>문학</option>
								<option value="200"<%if(book.getBook_kind().equals("200")){%>selected<%}%>>외국어</option>
								<option value="300"<%if(book.getBook_kind().equals("300")){%>selected<%}%>>컴퓨터</option>
							</select>
						</div>
						<div class="group">
							<label for="책 제목" class="label"> 
								책 제목
							</label>
							<input id="user"
								type="text" class="input" name="book_title" maxlength="50"
								size="50" value="<%=book.getBook_title()%>">
							<input id="user" type="hidden" name="book_id" value="<%=book_id%>">
						</div>
						<div class="group">
							<label for="책 가격" class="label"> 
								가격
							</label>
							<input id="user"
								type="text" class="input" name="book_price" maxlength="50"
								size="50" value="<%=book.getBook_price()%>">
						</div>
						<div class="group">
							<label for="책 수량" class="label"> 
								수량
							</label>
							<input id="user"
								type="text" class="input" name="book_count" maxlength="5"
								size="10" value="<%=book.getBook_count()%>">
						</div>
						<div class="group">
							<label for="책 저자" class="label"> 
								저자
							</label>
							<input id="user"
								type="text" class="input" name="author" maxlength="30"
								size="20" value="<%=book.getAuthor()%>">
						</div>
						<div class="group">
							<label for="책 출판사" class="label"> 
								출판사
							</label>
							<input id="user"
								type="text" class="input" name="publishing_com" maxlength="30"
								size="20" value="<%=book.getPublishing_com()%>">
						</div>
						<div class="group">
							<label for="책 출판일" class="label"> 
								출판일
							</label>
							<select name="publishing_year">
							<%
								Timestamp nowTime = new Timestamp(System.currentTimeMillis());
								int lastYear = Integer.parseInt(nowTime.toString().substring(0,4));
								for(int i = lastYear; i >=2010; i--){
							%>
								<option value="<%=i%>"
								<%if(Integer.parseInt(book.getPublishing_date().substring(0,4)) == i){%>
									selected<%}%>>
								<%=i%>
								</option>
								<%}%>
							</select>년
							<select name="publishing_month">
							<%
								for(int i = 1; i<=12; i++){
							%>
								<option value="<%=i%>"<% if(Integer.parseInt(book.getPublishing_date().substring(5,7))==i){%>
								selected <%}%>>
									<%=i%>
								</option>
							<%}%>
							</select>월
							
							<select name="publishing_day">
							<%
								for(int i = 1; i<=31; i++){
							%>
								<option value="<%=i%>"
								<%if(Integer.parseInt(book.getPublishing_date().substring(8)) ==i){%>
								selected <%}%>>
									<%=i%>
								</option>
							<%}%>
							</select>일
						</div>
						<div class="group">
							<label for="책 이미지" class="label"> 
								이미지
							</label>
							<input type="file" name="book_image"><%=book.getBook_image() %>
						</div>
						<div class="group">
							<label for="책 내용" class="label"> 
								내용
							</label>
							<textarea name="book_content" rows="13" cols="46">
								<%=book.getBook_content()%>
							</textarea>
						</div>
						<div class="group">
							<label for="책 할인율" class="label"> 
								할인율
							</label>
							<input class="input"type="text" size="5" maxlength="2" name="discount_rate"
							value="<%=book.getDiscount_rate()%>">
						</div>
						<div class="group">
							<input class="button" type="button" value="책 수정" onclick="updateCheckForm(this.form)">
						</div>
						<div class="group">
							<input class="button" type="reset" value="다시작성">
						</div>
						<div class="group">
							<label for="관리자 메인" class="label"> <a
								href="../managerMain.jsp">관리자 메인으로</a>
							</label>
						</div>
					</form>
					<%
			}catch(Exception e){
				e.printStackTrace();
			}
					%>
				</div>
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
