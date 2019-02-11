
<%--게시글 출력 --%>

<%-- page directive --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:useBean id="member" class="chap11.Member" scope="application"/>

<%
	request.setCharacterEncoding("UTF-8");

	// 우선순위 확인을 위해 변수명을 동일하게 셋팅
	pageContext.setAttribute("developer","박광호");		// page 영역		
	request.setAttribute("developer","park kwang ho");	// request 영역
%>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>
	<h1>게시글 출력</h1>
	도서명 : 	${param.bookName }<br>			<%-- 4개 기본영역이외에는 접근경로를 명시해야함 --%>
	저자명 : 	${param.writer }<br>
	제목 : 		${param.title }<br>
	
	아이디 : 	${member.id}, 비밀번호 : ${member.pw } <br>
	<%-- id, pw 모두 getter를 사용하여 얻어옴으로 getter필수로 정의 --%>


	개발자(한글) : ${developer}<br>				<%-- 4개 기본영역은 접근경로 생략시 우선순위대로 자동 탐색 --%>
	개발자(영문) : ${requestScope.developer}<br>
</body>
</html>