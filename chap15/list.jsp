<%-- 메세지 목록을 보여주는 로직 --%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="chap15.model.Message" %>
<%@ page import="chap15.service.MessageListView" %>
<%@ page import="chap15.service.GetMessageListService" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	
	String pageNumberStr = request.getParameter("page");		// 해당 page를 요청하는 곳에서 전송한 page parameter = 뭐지?
	int pageNumber = 1;
	
	if(pageNumberStr != null){
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	
	// 메세지 리스트 정보를 저장 //
	GetMessageListService messageListService = GetMessageListService.getInstance();
	
	// 요청 페이지와 관련된 정보를 저장 // 
	MessageListView viewData = messageListService.getMessageList(pageNumber);
	
%>

<%-- 메세지 정보를 저장한 객체의 참조값을 저장 --%>
<c:set var="viewData" value="<%=viewData %>" scope="page"/>



<html>
<head>
	<title>방명록 메세지 목록</title>
</head>
<body>
	<form action="writeMessage.jsp" method="post">
	이름 : <input type="text" name="guestName"><br>
	암호 : <input type="password" name="password"><br>
	메세지 : <textarea name="message" cols="30" rows="3"></textarea><br>
	<input type="submit" value="메세지 남기기">
	</form>
	<hr>
	
	<c:if test="${viewData.isEmpty() }">
	등록된 메세지가 없습니다.
	</c:if>
	
	<c:if test="${!viewData.isEmpty() }">
	
	<table border="1">
	
		<%-- [debugging] 해당 조건이 실행되지않음 = 아이템(instance)에 요소값이 없다는 말씀! --%>
		<c:forEach var="message" items="${viewData.messageList }">
		<tr>
			<td>
				메세지 번호 : ${message.id } <br/>
				손님이름 : ${message.guestName }<br/>
				메세지 : ${message.message }<br/>
				<a href="confirmDeletion.jsp?messageId=${message.id }">[삭제하기]</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
		<a href="list.jsp?page=${pageNum }"> [${pageNum}] </a>
	</c:forEach>
	</c:if>
	
	
</body>
</html>