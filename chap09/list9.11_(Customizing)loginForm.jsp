<%-- 로그인 form 페이지 --%>

<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>로그인</title></head>
<body>
	<h1>로그인 form</h1>
	<form action ="list9.11_(Customizing)loginFilter.jsp" method="post">
		아이디 : <input type="text" name="id"><br>	
		비밀번호 : <input type="password" name="pw">
	<input type="submit" value="로그인">
	</form>
	
	<%-- 노트정리시 cookie 영역에 저장된 변수의 변화를 도식화해야함!! --%>
	<%-- 4개 페이지 : 3페이지 소스 , 1페이지 jsp파일과 로그인 흐름의 관계 --%>

</body>
</html>