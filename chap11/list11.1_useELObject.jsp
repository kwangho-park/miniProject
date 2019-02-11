<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("name", "박광호");
	pageContext.setAttribute("age", 29);
	session.setAttribute("blog","solt");
	request.setAttribute("blog","tistory");
%>

<html>
<head>
	<title>Insert title here</title>
</head>

<body>
	
	<h1>특정 scope</h1>
	<%-- 특정 scope의 attribute를 탐색 --%>
	
	1. name 속성값	: ${ requestScope.name } <br>
	
	2. age 속성값 : ${ pageScope.age } <br>
	
	3. blog 속성값(session영역) : ${ sessionScope.blog } <br>

	4. blog 속성값(request영역) : ${ requestScope.blog } <br>

	
	
	
	<h1>전체 scope</h1>
	<%-- attribute를 탐색 --%>
	
	1. name 속성값 	: ${ name } <br>
	
	2. age 속성값 : ${ age } <br>
	
	3. blog 속성값 : ${ blog } <br>

	  
	 
</body>
</html>