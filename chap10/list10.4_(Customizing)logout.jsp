<%-- 로그아웃시 동작하는 로직 4--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	session.invalidate();		// 세션종료
	response.sendRedirect("list10.4_(Customizing)form.jsp");				
%>
