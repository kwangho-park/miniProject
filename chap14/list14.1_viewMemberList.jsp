<%-- DB의 회원 목록을 조회하는 로직 --%>
<%-- html과 jsp script let이 혼합되어있어서 매우 복잡한 구조임.. --%>

<%-- 사용할 클래스의 경로를 명시해줌 --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>

<html>
<head><title>회원목록</title></head>
<body>

	<h1>member 테이블의 내용</h1>
	
	
	<table border="1">
	<tr>
		<td>이름</td><td>아이디</td><td>이메일</td>
	</tr>
	
	<%



	// 1. jdbc driver load //
	// Class.forName("com.mysql.cj.jdbc.Driver");
	
	// DB 접속 경로, DB명
	String DB_URL = "jdbc:mysql://localhost:3306/choi_jsp ? useSSL=false & characterEncoding=UTF-8 & serverTimezone=UTC" ;	
	String USER_NAME = "root";		// DBMS id
	String PASSWORD = "peterrabbit";	// DBMS pw	
	
	
	/* [장기고민] 동작하지 않는 이유는 무엇일까?? is program 에서는 정상이였는데... 
	// 혹시... java 파일과 jsp파일의 차이?
	String JDBC_DRIBER = "com.mysql.cj.jdbc.Driver";
	Class.forName("JDBC_DRIBER");
	*/

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	try{
	
		String query = "SELECT * FROM member ORDER BY memberid";
		
		
		// 2. DB conncetion //
		conn = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		
		// 3. statement 객체 생성 //
		stmt = conn.createStatement();
		
		// 4. query 문 실행 //
		rs = stmt.executeQuery(query);
		
		
		// 5. query 반환 값(=응답) 저장 //
		while(rs.next()){
	%>
	
		<tr>
			<td><%=rs.getString("name") %></td>	
			<td><%=rs.getString("memberid") %></td>	
			<td><%=rs.getString("email") %></td>
		</tr>		
	<%
	
		}
		
		
		
	}catch(SQLException e){
		e.printStackTrace();
		
				
	}finally{
		// 6. ResultSet/statement 종료, disconnection  //
		rs.close();	
		stmt.close();
		conn.close();
	}
	%>
	
	</table>
	
</body>
</html>