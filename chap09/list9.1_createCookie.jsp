<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	// 쿠키를 생성 할 때 값을 인코딩해야하는 이유는????...
	// 호출시 인코딩된 값을 디코딩해서 사용함
	// 쿠키의 이름은 한글불가능
	Cookie cookieName = new Cookie("name", URLEncoder.encode("박광호","UTF-8"));
	Cookie cookieAge = new Cookie("age", URLEncoder.encode("29","UTF-8"));

	response.addCookie(cookieName);
	response.addCookie(cookieAge);
%>

<html>
<head><title>쿠키생성</title></head>
<body>
	<h1>쿠키생성</h1>
	(쿠키의 이름/값) <br>
	
	<%-- server에서 생성한 cookie이름과 값을 출력 --%>
	성명 : <%=cookieName.getName() %> = <%=cookieName.getValue() %><br>
	나이 : <%=cookieAge.getName()%> = <%=cookieAge.getValue() %> 
</body>
</html>