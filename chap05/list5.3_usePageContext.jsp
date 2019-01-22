<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%-- script let --%>
	<%
		HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();	
	%>
	
	<%-- 표현식 --%>
	<%= request%>
	<%= httpRequest %>
	<br>
	<%= request == httpRequest %>
	
	<% 
	pageContext.getOut().println("안녕?"); 
	%>
	
</body>
</html>