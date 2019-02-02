<%-- 로그인 필터링 로직 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id.equals(pw)){		// id와 pw가 같으면 로그인 성공으로 판단 (임시방편)
		
		// cookie에 loginFlag 생성 및 저장
		Cookie loginFlag = new Cookie("loginFlag", URLEncoder.encode("true","UTF-8"));
		response.addCookie(loginFlag);

		// login 완료 페이지로 전환
		response.sendRedirect("list9.11_(Customizing)login.jsp");

	// 로그인 실패
	}else{
		// login 입력 페이지로 전환
		response.sendRedirect("list9.11_(Customizing)loginForm.jsp");
	}	
%>