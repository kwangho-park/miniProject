
<%-- jsp 기본 객체의 attribute 사용 --%>

<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- script let --%>
<%-- web browser가 전달한 parameter의 확인 후 application 기본객체에 속성으로 setting --%>
<%-- 단, para 전송방식 : GET --%>

<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name != null && value != null){
		application.setAttribute(name, value);
	}
%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>

<body>

	<%-- application 기본객체 속성에 저장한 parameter를 출력 --%>
	<%
		if(name != null && value !=null){
	%>
		web browser에서 전달한 parameter의 이름과 값
		<br>
		<%=name %> = <%= value %>
	<%
		}else{
	%>
	
	<%
		}
	%>
</body>
</html>