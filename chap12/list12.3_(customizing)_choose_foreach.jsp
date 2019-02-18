<%--(노트정리) 나이별 도서 추천 --%>

<%--page directive tag (JSP script element) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%--taglib directive tag : core tag의 경로--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String[] bookArray = {"백야행", "용의자x의 헌신", "밀실살인게임"};
%>

<c:set var="bookArray" value="<%=bookArray %>" scope="application"/>

<html>
<head><title>Insert title here</title></head>
<body>

	<%-- custom tag : JSTL : core --%>
	<%-- choose = switch + if-else --%>
	<c:choose>
		<c:when test="${param.age >= 20}">
			성인 추천도서 : 카스테라
		</c:when>
		
		<c:when test="${param.age >= 17 && param.age <= 19 }">
			고등학생 추천도서 : <br>
			
			<%--[중요] pageScope 객체의 property loop에 배열요소의 값이 순차적으로 저장됨--%>	
			<c:forEach var="loop" items="${bookArray }" begin="0" end="2" varStatus="status">
				${status.count} 번째 : ${pageScope.loop} 
				( index : ${status.index} ) <br>
			</c:forEach>
		</c:when>
		
		<%-- 모두 해당사항이 경우 실행 (java switch 문의 default --%>
		<c:otherwise>
			나이가 너무 어립니다. ( 당신의 나이 : ${param.age} )
		</c:otherwise>
	</c:choose>
</body>
</html>