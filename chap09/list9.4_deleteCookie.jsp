<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	Cookie[] cookies = request.getCookies();				// 브라우져가 전송한 cookie의 배열을 반환 (cookies)

			
	if(cookies != null){									// cookie 의 값이 없을경우를 null 반환
		for(int loop=0 ; loop<cookies.length ; loop++){		// cookies 배열의 element 수 만큼 반복
			
			if(cookies[loop].getName().equals("kwangho")){	// cookies 배열에서 이름이 name 인 값을 찾음
				Cookie cookie = new Cookie("kwangho", "");
				cookie.setMaxAge(0);						// 유효시간을 0으로 셋팅 (=쿠키 삭제하기위한 셋팅))
				
				response.addCookie(cookie);					// response 기본객체에 셋팅
			}
		}
	}
%>

<html>
<head>
	<title>쿠키 삭제</title>
</head>
<body>
	쿠키를 삭제합니다 (유효시간=0)) <br>

</body>
</html>