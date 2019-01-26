
<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%-- 이 페이지는 텍스트, html로 구성되어있고 인코딩용 케릭터셋은 UTF-8입니다!! --%>

<%@ page isErrorPage="true"%> 
<%--이 페이지는 에러페이지예요! --%>


<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>에러 페이지</title>
</head>

<body>
	요청 처리과정에서 에러가 발생했네요 ㅠㅠ.. <br>
	에러 타입 : <%=exception.getClass().getName() %> <br>
	에러 메세지 : <%=exception.getMessage() %>
</body>
</html>