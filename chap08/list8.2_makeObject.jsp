<%-- page directive --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- action tag : useBean --%>
<jsp:useBean id="member" class="chap08.MemberInfo" scope="request"/>
<%-- [동일 소스]
	MemberInfo member = (MemberInfo)request.getAttribute("member");	// 3. request영역에 instance가 존재한다면 새로 생성하지않음
	if(member ==null){
		member = new MemberInfo();					// 1. instance 생성
		request.setAttribute("member", member);		// 2. request 영역에 저장
	}
--%>


<%-- script let --%>
<%
	member.setName("박광호");	
	member.setId("pkship0410");
%>

<%--action tag : forward --%>
<jsp:forward page="/chap08/list8.3_useObject.jsp"/>





