<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%
	request.setCharacterEncoding("UTF8");

	String memberID = request.getParameter("memberID");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");

	// 1. jdbc driver load //	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	
	// DB 접속 경로, DB명
	String DB_URL = "jdbc:mysql://localhost:3306/choi_jsp ? useSSL=false & characterEncoding=UTF-8 & serverTimezone=UTC " ;	
	String USER_NAME = "root";		// DBMS id
	String PASSWORD = "peterrabbit";	// DBMS pw	
	
	
	try{

		
		conn = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		
		// 동적 sql setting
		pstmt = conn.prepareStatement("INSERT INTO member value(?,?,?,?)");
		
		pstmt.setString(1,memberID);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,email);
		
		pstmt.executeUpdate();
		
	}catch(Exception e){
		
	}finally{
		pstmt.close();
		conn.close();
	}
%>


<html>
<head><title>Insert title here</title></head>
<body>
	테이블에 새로운 레코드를 삽입했습니다 ^^
</body>
</html>