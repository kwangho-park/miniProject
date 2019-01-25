<%-- web application의 영역에 1:1매핑된 기본객체 활용1 --%>


<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import ="java.util.Date" %>

<!DOCTYPE html>

<%
	/* 호스팅 서버정보 셋팅 (application 기본객체)*/
	String hostingServer	= (String)application.getAttribute("hostingServer");	// 서버정보
	Date launching 			= (Date)application.getAttribute("launching");			// 론칭일자
%>


<html>
<head><title>서버정보 확인</title></head>
<body>
	호스팅서버 정보 : <%= hostingServer %><br>
	론칭일자 :  <%= launching %>
</body>
</html>