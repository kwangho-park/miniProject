<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>a 페이지</title></head>
<body>
	백야행 후기 <br>
	도서 종류 : <%=request.getParameter("bookType") %>
	<%=request.getParameter("bookName") %>
</html>