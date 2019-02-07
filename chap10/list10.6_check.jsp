<%--
	 로그인 여부를 확인하기위한 로직
--%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>

<html>
<head>
	<title>로그인 여부 확인</title>
</head>
<body>
<%
	if(login){
		out.println("아이디 :" + memberId);
	}else{
		out.println("로그인되지 않은 상태");
	}
%>
</body>
</html>