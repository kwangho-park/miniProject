<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


bodyMain -> bodySub에서 name 파라미터 값 : <%=request.getParameter("name") %><br>

name 파라미터 목록 : <br>

<%--
<%
	String[] names = request.getParameterValues("name");

	for(String name : names){
		out.println(name);
	}
%>

 --%>