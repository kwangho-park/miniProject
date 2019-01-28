<%@ page contentType = "text/html; charset=utf-8" %>

<%--
<%
	// action tag <jsp:param>으로 전달되는 parameter를 인코딩하기위한 character
	// [궁금증] 이건 get/post방식의 설정아닌가?
	// 그렇다면 get/post 방식이 browser <-> server 간 뿐만아니라 다른 parameter 전송에도 사용한다는 의미??
		
	request.setCharacterEncoding("utf-8");
%>
--%>
 
<html>
<head><title>INFO</title></head>
<body>

	<%-- parameter 전송방식의 defult : GET --%>
	<%-- 사용자가 전송한 name이름의 parameter 반환 --%>
<%--
	include 전 name 파라미터 값: <%= request.getParameter("name") %>
 --%>
	<hr>

	<jsp:include page="list7.9_bodySub.jsp" flush="false">
		<jsp:param name="name" value="최범균" />
	</jsp:include>

	<hr/>
 <%--	
 	include 후 name 파라미터 값: <%= request.getParameter("name") %>
 --%>
</body>
</html>


