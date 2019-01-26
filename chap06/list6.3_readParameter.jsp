<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--  
<%@ page errorPage = "list6.4_viewErrorMessage.jsp" %>
--%>

<!DOCTYPE html>

<html>	
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>parameter입력</title>
</head>

<body>
	당신이 입력한 parameter값은?! : <%=request.getParameter("Name").toUpperCase()%>
</body>
</html>