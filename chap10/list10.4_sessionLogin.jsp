<%--
	인증된 사용자정보를 session 기본 객체에 저장
 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals(pw)){
		session.setAttribute("MEMBERID",id);
		out.println("로그인 성공");
	}else{
		out.println("로그인 실패");
		out.println("<script>history.go(-1)</script>");
	}
%>
