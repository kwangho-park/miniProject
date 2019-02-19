<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>이름 변경 form</title>
</head>
<body>
	<form action="/choi_JSP/chap14/update/list14.3_update.jsp" method="post">

		아이디 : <input type="text" name="memberID">
		변경 할 이름 : <input type="text" name="name">	

		<input type="submit" value="이름변경">
		
	</form>
</body>
</html>