<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	
	int updateCount = 0;


	// 1. jdbc driver load //
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	// DB 접속 경로, DB명
	String DB_URL = "jdbc:mysql://localhost:3306/choi_jsp ? useSSL=false & characterEncoding=UTF-8 & serverTimezone=UTC " ;	
	String USER_NAME = "root";		// DBMS id
	String PASSWORD = "peterrabbit";	// DBMS pw	
	

	Connection conn = null;
	Statement stmt = null;

	try{
	
		String query = "UPDATE member SET name =" + "'" +name+ "'"+" WHERE memberid =" + "'" +memberID+ "'";
		
		// 2. DB conncetion //
		conn = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		
		// 3. statement 객체 생성 //
		stmt = conn.createStatement();
		
		// 4. SQL 전송 및 반환값 저장 (= 변경된 record 갯수) / /
		updateCount = stmt.executeUpdate(query);
	
		
		
	}catch(SQLException e){
		e.printStackTrace();
		
				
	}finally{
		
		// 6. statement 종료, disconnection //
		stmt.close();	
		conn.close();
	}
%>

<html>
<head><title>이름변경</title></head>
<body>
	<%
		if(updateCount > 0){
			out.println(memberID+"의 이름을 "+name+"으로 변경");
		}else{
			out.println(memberID+" 아이디가 존재하지 않음");
		}
	%>
	
</body>
</html>
