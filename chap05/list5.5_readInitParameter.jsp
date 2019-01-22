

<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>

<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	초기화 파라미터 목록

	<%=application.getInitParameter("logEnabled") %>
	
	<%=application.getInitParameter("debugLevel") %>


</body>
</html>