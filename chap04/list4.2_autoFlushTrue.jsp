<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" autoFlush="True"%>



<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>autoFlush attribute 값 false예제</title>
</head>
<body>
	
	<%-- 4kb 이상의 데이터 생성 --%>
	<% for (int i = 0 ; i<1000;i++){ %>
	1234
	<% } %>
	
</body>
</html>