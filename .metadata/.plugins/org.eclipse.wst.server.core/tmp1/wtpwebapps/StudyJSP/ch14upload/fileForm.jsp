<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 예제</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileUpload.jsp">
		<table border="1">
			<tr>
				<td width="100" align="center">작성자</td>
				<td width="250" align="left"><input type="text" name="user" size="40"></td>
			</tr>
			<tr>
				<td width="100" align="center">제목</td>
				<td width="250" align="left"><input type="text" name="title" size="40"></td>
			</tr>
			<tr>
				<td width="100" align="center">파일명</td>
				<td width="250" align="left"><input type="file" name="uploadFile" size="40"></td>
			</tr>
		</table>
		<input type="submit" value="파일올리기">
	</form>
</body>
</html>