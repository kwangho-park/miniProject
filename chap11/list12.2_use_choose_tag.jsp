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
		<c:when test="${param.name =='bk'}">
			당신의 이름은 ${param.name} 입니다.
		</c:when>
		
		<c:when test="${param.age > 20 }">
			당신의 나이는 20세 이상입니다.
		</c:when>
		
		<%-- 모두 해당사항이없을때 실행 (java switch 문의 defult --%>
		<c:otherwise>
			당신의 이름은 bk가 아니며, 나이는 20세 미만입니다
		</c:otherwise>
		
	</c:choose>
</body>
</html>