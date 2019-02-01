
<%-- get 방식으로 parameter전달필요 : bookName, writer --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import ="java.util.Date" %>

<!DOCTYPE html>

<%
	// action tag <jsp:param>으로 전달되는 parameter를 인코딩하기위한 character
	// [궁금증] 이건 get/post방식의 설정아닌가?
	// 그렇다면 get/post 방식이 browser <-> server 간 뿐만아니라 다른 parameter 전송에도 사용한다는 의미??
	request.setCharacterEncoding("utf-8");
%>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>write</title>
</head>

<body>
	<%-- 기본객체를 통해 postPrint page에 파라미터 전달용--%>
	<%-- [중요] 다양한 타입의 값을 전달가능 --%>
	<%	request.setAttribute("date",new Date(2019-01-20));	%>


	<h1>입력 정보</h1>

	도서명(bookName) : <%=request.getParameter("bookName") %><br> 

	작가명(writer) 	 : <%=request.getParameter("writer") %><br>


	<%-- jsp action tag로 실행흐름의 이동 --%>
	<%-- [주의] param action tag는 String 타입의 값만 전달가능 --%>
	<jsp:include page="list7.9_(Customizing)postPrint.jsp" flush="false">
		<jsp:param name="number" value="1"/>
	</jsp:include>

</body>
</html>