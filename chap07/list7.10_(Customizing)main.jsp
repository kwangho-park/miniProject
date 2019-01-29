
<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>main</title>
</head>
<body>

<%
	int age = 29;
%>

	main.jsp에서 생성한 content <br>
	
	<hr>
	<%--include directive --%>
	<%@ include file="list7.11_(Customizing)sub.jspf"%>
	<hr>

	
</body>
</html>