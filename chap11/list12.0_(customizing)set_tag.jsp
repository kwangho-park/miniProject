<%-- 노트정리 --%>
<%-- core tag : 변수지원 --%>

<%@ page contentType="text/html; charset=UTF-8" %>

<%-- taglib directive tag --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- jsp action tag --%>
<jsp:useBean id="member" class="chap11.Member" scope="page"/>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>
	
	<%-- [셋팅 : pageContext기본객체의 변수 생성 및 초기화]--%>
	
	<%--script let --%>
	<%--attribute(변수) 생성, scope = 해당 jsp 파일 --%>
	<%--[장기고민..] 아니 잠깐... 그럼 page scope는 ....java파일과 mapping되어있는 객체의 scope인 건가??--%>
	<%
		int parkAge = 29;
	%>
	<%-- 표현식 --%>
	( 나이 : <%= parkAge%> )<br>


 	<%--script let --%>
	<%--page scope에 attribute(변수) 생성--%>
	<%
		pageContext.setAttribute("parkJob", "소프트웨어 개발자");
	%>
	<%-- 표현식 --%>
	( 직업 : <%= pageContext.getAttribute("parkJob") %> ) <br>
 
	<hr>
	
	<%-- JSTL (page scope : default)--%>
	<c:set var="name" value="박광호" scope="page"/>
	<c:set var="age" value="<%=parkAge %>" />
	<c:set var="job" value="${pageScope.parkJob }" />
	
	<%-- java bean instance property --%>
	<c:set var="id" value="${member.getId()}"/>

	
 	<%-- [출력]--%>
	<%-- EL --%>
	이름 : ${pageScope.name} <br>

	나이 : ${pageScope.age} <br>

	직업 : ${pageScope.job} <br>

	아이디 : ${pageScope.id } <br>
	
	<%--[아이디 변경] --%>
	<%-- setter method로 설정함 (누가 이런짓을?)--%>
	<c:set target="${pageScope.member}" property="id" value="admin" />
	
	<%-- getter method로 호출함 (누가 이런짓을?) --%>
	아이디(변경후) : ${member.id }<br>
	

</body>
</html>