<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>파라미터 출력</title>
</head>
<body>

name parameter value : 

<% 
	try{
	
	out.println(request.getParameter("name").toUpperCase());
	
	} catch(Exception ex) {
		
	out.println("name 파라미터가 올바르지 않습니다.");
	}
%>


</body>
</html>