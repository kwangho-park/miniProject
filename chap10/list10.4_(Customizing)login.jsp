<%-- 로그인 완료 페이지 3--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head><title>login 창</title></head>
<body>
	<h1>로그인 완료</h1>
	
	<form action="list10.4_(Customizing)logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
	<br>

	<%-- session에 저장된 loginFlag값을 확인하기 위한 로직 --%>
	<%
		boolean loginFlag = (boolean)session.getAttribute("loginFlag");
	
		if(loginFlag){
			out.println("loginFlag :" + loginFlag);
		}else{
			out.println("로그인되지 않은 상태");
		}
	%>
</body>
</html>




