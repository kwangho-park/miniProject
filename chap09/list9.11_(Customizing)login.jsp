<%-- 로그인 완료 페이지 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>
<html>
<head><title>login 창</title></head>
<body>
	<h1>로그인 완료</h1>
	
	<%-- server 단에서 cookie를 제거하는것보다 client 에서 제거하는것이 트랙픽관리에 효율적일것으로 추정됨 --%>
	<%-- 그러나 공부를 위해서 server logic으로 구현 --%>
	<form action="list9.11_(Customizing)logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
	
	
	<%-- 쿠키에 저장된 loginFlag값을 확인하기 위한 로직 --%>
	<%-- include directive로 jspf 파일로 분류하기!  --%>
	<%
		Cookie[] cookies = request.getCookies();			// request 헤더에 저장된 cookies 배열을 반환
	
		if(cookies != null){								// cookie가 존재하지 않을경우 필터링
			for(int loop=0 ;loop < cookies.length ; loop++){
				if(cookies[loop].getName().equals("loginFlag")){
					out.println(cookies[loop].getName());
					out.println("=");
					out.println(URLDecoder.decode(cookies[loop].getValue(), "UTF-8"));		// cookied의 값을 반환하여 디코딩
						
				}	
			}
		}else{
			out.println("쿠키가 존재하지않습니다");
		}
	%>

	
</body>
</html>