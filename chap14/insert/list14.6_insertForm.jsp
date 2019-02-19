<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head><title>Insert title here</title></head>
<body>
	<h1> record insert </h1>
	
	<form action="/choi_JSP/chap14/insert/list14.7_insert.jsp" method="post">
		아이디 : 	<input type="text" name="memberID"><br>
		암호 : 	<input type="password" name="password"><br>
		
		이름 : 	<input type="text" name="name"><br>
		이메일 : 	<input type="text" name="email"><br>

		<input type="submit" value="삽입">
	</form>
	
</body>
</html>