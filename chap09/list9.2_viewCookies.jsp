<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>

<html>
<head>
	<title>쿠키목록</title>
</head>
<body>
	<h1>전체 쿠키 목록 (cookie 이름 = 값) </h1>
	web browser에 저장 <br><br>
	
	<%
		Cookie[] cookies = request.getCookies();			// request 헤더에 저장된 cookies 배열을 반환
	
		if(cookies != null){								// cookie가 존재하지 않을경우 필터링
			for(int loop=0 ;loop < cookies.length ; loop++){
				
				out.println(cookies[loop].getName());
				out.println("=");
				out.println(URLDecoder.decode(cookies[loop].getValue(), "UTF-8"));		// cookied의 값을 반환하여 디코딩
				out.println("<br>");
			}
		}else{
			out.println("쿠키가 존재하지않습니다");
		}
	%>
	
</body>
</html>