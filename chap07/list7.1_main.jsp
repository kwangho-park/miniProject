
<%--<jsp:include> 액션태그와 공통영역 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>main</title>
</head>
<body>
	main.jsp에서 생성한 content <br>

	<%-- action tage의 의미는?? --%>
	<jsp:include page="list7.2_sub.jsp" flush="false" />

	jsp:include 액션태크 <br>
	
</body>
</html>