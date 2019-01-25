
<%-- web application의 영역에 1:1매핑된 기본객체 활용1 --%>


<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ page import ="java.util.Date" %>

<!DOCTYPE html>	

<%
	/* parameter(게시글 정보)를 반환 (request 기본객체) */
	String BookName = request.getParameter("bookName");						// 도서명
	int score		= Integer.parseInt(request.getParameter("score")); 		// 추천점수

	/* 게시글 번호 셋팅/반환 (request 기본객체)*/
	request.setAttribute("number",new Integer(1));							// 게시글 번호
	Integer number = (Integer)request.getAttribute("number");
	int numberInt = number.intValue();	
	
	/* 호스팅 서버정보 셋팅 (application 기본객체)*/
	application.setAttribute("hostingServer", "AWS-ubuntu18.04-tomcat8");	// 서버정보
	application.setAttribute("launching", new Date(2019-01-20));			// 론칭일자
	
%>

<html>
<head><title>게시글 입력</title></head>
<body>
	
<%
	if(BookName != null && score != 0){
%>
	도서명 : <%= BookName %><br>
	추천점수 : <%= score %><br>
	게시글 번호 : <%= numberInt %>
<%
	}else{ out.println("게시글 정보를 입력해주세요^^"); }
%>

	<br><a href="list5.13_(Customizing)webAppOfScope2.jsp">서버정보 확인</a>

</body>
</html>