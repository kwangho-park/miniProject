<%-- page directive --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>main</title>
</head>
<body>
	main.jsp에서 생성한 content <br>
<%
	int age = 29;
%>
	<hr>
	<%--include directive --%>
	<%@ include file="list7.11_(Customizing)sub.jspf"%>
	<hr>	
</body>
</html>