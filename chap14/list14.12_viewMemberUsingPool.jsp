
<%-- data base (choi_jsp)의 member table에서 회원정보를 조회하는 로직 --%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<html>
<head><title>회원 목록</title></head>

<body>
	<h1>member table 내용</h1>

	<table border="1">
		<tr>
			<td>이름</td><td>아이디</td><td>이메일</td>
		</tr>
	
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try{
 	
				String jdbcDriver = "jdbc:apache:commons:dbcp:chap14";


 				String query = "SELECT * FROM member ORDER BY memberid";

				conn = DriverManager.getConnection(jdbcDriver);	// 예외발생
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				
				
				while(rs.next()){
					out.println("<tr>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("memberid")+"</td>");
					out.println("<td>"+rs.getString("email")+"</td>");
					out.println("</tr>");
				}
				
			}catch(Exception e){
				e.printStackTrace();
				
			}finally{
				try{
					rs.close();
					stmt.close();
					conn.close();					
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		%>
	
	</table>

</body>
</html>