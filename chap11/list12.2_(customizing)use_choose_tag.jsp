
<%-- 나이 별 도서를 추천하는 프로그램 --%>

<%-- script tag : page directive tag --%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%-- script tag : taglib directive tag --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
	<title> choose tag</title>
</head>
<body>
	<%-- custom tag : JSTL : core --%>
	<%-- choose = switch + if-else --%>
	<c:choose>
		<c:when test="${param.age >= 20}">
			성인 추천도서 : 인문학
			( ${param.age} )
		</c:when>
		
		<c:when test="${param.age >= 17 && param.age <= 19 }">
			고등학생 추천도서 :  자기계발
			( ${param.age} )
		</c:when>
		
		<c:when test="${param.age >= 14 && param.age <=16}">
			중학생 추천도서 : 연애
			( ${param.age} )
		</c:when>
		
		<%-- 모두 해당사항이 경우 실행 (java switch 문의 defult --%>
		<c:otherwise>
			나이가 너무 어립니다. ( ${param.age} )
		</c:otherwise>
		
	</c:choose>
</body>
</html>