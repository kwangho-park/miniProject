<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head><title>회원가입 form</title></head>
<body>

	<h1>회원가입 form</h1>
	<form action="list8.5_processJoining.jsp" method="post">
		
		<%-- parameter 이름은 memberInfo instance의 property 이름과 동일하게 지정 --%>
		아이디 : <input type="text" name="id"> <br>			<%-- name = parameter이름 --%>
		이름 : <input type="text" name="name"><br>
		이메일 : <input type="text" name="email"><br>	
		
	<input type="submit" value="회원가입신청">				<%-- 서버로 3개의 parameter 발송 (post방식) --%>
	
	</form>

</body>
</html>