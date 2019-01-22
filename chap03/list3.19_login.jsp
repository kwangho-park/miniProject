<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>


<%-- URL로 접속 시 id parameter를 get전송방식인 쿼리문으로 전달 --%>


<%
	String id = request.getParameter("id");

	if (id != null && id.equals("admin")){
		response.sendRedirect("index.jsp");		// id parameter가 admin일 경우 redirection (=페이지를 이동하라고 응답)
	}else{
%>

	<html>
	<head>
		<title>로그인 실패</title>
	</head>

	<body>
		잘못된 아이디입니다		
	</body>
	</html>

<%
	}	
%>