<%--page directive tag (JSP script element) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%--taglib directive tag : core tag의 경로--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>core - if tag</title>
</head>
<body>
	<%-- core-if tag = 반복문 if와 동일한 동작 --%>
	<c:if test = "true">	<%--무조건 실행 --%>
		
	</c:if>
	
	<c:if test = "${param.name =='bk' }">
		name 파라미터 값은 ${param.name } 입니다 <br>
	</c:if>
	
	<c:if test = "${18<param.age}">
		당신의 나이는 18세 이상입니다
	</c:if>

 
</body>
</html>