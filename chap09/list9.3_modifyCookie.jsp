<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	Cookie[] cookies = request.getCookies();

	if(cookies != null){
		for(int loop=0 ; loop<cookies.length ; loop++){
			
			if(cookies[loop].getName().equals("name")){
				Cookie cookie = new Cookie("name", URLEncoder.encode("JSP전문가","UTF-8"));
				response.addCookie(cookie);		// response 기본객체에 셋팅 (덮어쓰기로 cookie 변경)
			}
		}
	}
%>

<html>
<head>
	<title>값 변경</title>
</head>
<body>
	name 쿠키의 값을 변경합니다
</body>
</html>