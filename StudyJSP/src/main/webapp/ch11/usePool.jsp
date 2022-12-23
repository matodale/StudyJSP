<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<html>
<head>
<title>커넥션풀을 사용한 테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
	<h3>커넥션풀을 사용한 테이블의 레코드를 화면에 표시하는 예제</h3>
	<table border="1">
		<tr>
			<Td width="250">아이디</Td>
			<Td width="100">패스워드</Td>
			<Td width="100">이름</Td>
			<Td width="250">가입일자</Td>
		</tr>
		<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Context intiCtx = new InitialContext();
			Context envCtx = (Context) intiCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
			conn = ds.getConnection();
			
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
			
		%>
		<tr>
			<td width="250"><%=id %></td>
			<td width="100"><%=passwd %></td>
			<td width="100"><%=name %></td>
			<td width="250"><%=register.toString() %></td>
		</tr>
		<%
			}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException sqle) {
			}
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException sqle) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException sqle) {
			}
		}
		%>
	</table>
</body>
</html>