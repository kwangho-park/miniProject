<%-- 로그인 필터링 로직 2--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id.equals(pw)){		// id와 pw가 같으면 로그인 성공으로 판단 (임시방편)
		
		// session(서버)에 loginFlag 생성 및 저장
		session.setAttribute("loginFlag",true);
	
		//login 완료 페이지로 전환
		response.sendRedirect("list10.4_(Customizing)login.jsp");

	// 로그인 실패
	}else{
		//login 입력 페이지로 전환
		response.sendRedirect("list10.4_(Customizing)form.jsp");
	}	
%>

