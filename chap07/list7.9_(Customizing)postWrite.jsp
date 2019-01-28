<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>write</title>
</head>
<body>
	<h1>게시글 작성</h1>
	<p>작성방법 : URL의 쿼리문으로 parameter전송 </p>
	
	<h2>입력한 게시글</h2>
	
	도서명(bookName) : <%=request.getParameter("bookName") %><br> 
	
	작가명(writer) 	 : <%=request.getParameter("writer") %>><br>
	
	
	<%-- jsp action tag로 실행흐름의 이동 --%>
	<jsp:include page="list7.9_(Customizing)postPrint.jsp" flush="false">
		<jsp:param name="number" value="1"/>
	</jsp:include>
	
</body>
</html>