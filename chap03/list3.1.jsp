<!-- 설정부분 : page directive -->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- 생성부분 -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>문서제목</title>
</head>

<body>
	<!-- script let -->
	<%
	String bookTitle = "jsp 프로그래밍";
	String author = "최범균";
	%>
	
	<!-- 표현식 -->	
	<strong><%=bookTitle %></strong>(<%=author %>) 입니다
	
</body>
</html>