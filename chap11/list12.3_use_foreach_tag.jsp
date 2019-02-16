<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.HashMap" %>

<%-- taglib directive tag --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	HashMap<String, Object> mapData = new HashMap<String, Object>();
	mapData.put("name","최범균");
	mapData.put("today",new java.util.Date());
%>

<c:set var="intArray" value="<%=new int[]{1,2,3,4,5} %>" scope="application"/>
<c:set var="map" value="<%=mapData %>" scope="page" />

<html>
<head>
	<title>forEach tag</title>
</head>
<body>

	<%-- c:forEach 는 반복문의 역활 --%>
	<%-- 일시정지 --%>
	<h1>1부터 100까지 홀수의 합</h1>
	
	<c:set var="sum" value="0" scope="page"/>
	
	<c:forEach var="i" begin="1" end="100" step="2" >
		<c:set var="sum" value="${pageScope.sum + i }" />
	</c:forEach> 
	
	결과 = ${pageScope.sum}	<br>
	
	
	<h1>구구단 4단</h1>
	
	<c:forEach var="i" begin="1" end="9">
		4 * ${pageScope.i} = ${4 * pageScope.i } <br>
	</c:forEach>
	

	
	<h1>int형 배열</h1>
	
	<%--[중요] pageScope 객체의 property i에 배열요소의 값이 순차적으로 저장됨--%>
	<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
		${status.index} - ${status.count } - [${pageScope.i }] <br>
	</c:forEach>
	

</body>
</html>