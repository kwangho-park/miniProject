<%-- 메세지를 등록하는 로직 --%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="chap15.model.Message" %>
<%@ page import="chap15.service.WriteMessageService" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="message" class="chap15.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>


<%

	WriteMessageService writeService = null;

	writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>

<html>
<head>
	<title>방명록 메세지 남김</title>
</head>

<body>

	방명록에 메세지를 남겼습니다.
	<br/>
	<a href="list.jsp"> [목록보기] </a>
	
</body>
</html>