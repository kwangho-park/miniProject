<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
	String bookName = request.getParameter("bookName");
	String viewPageURI = null;
	
	if(bookName.equals("A")){
		viewPageURI = "module/a.jsp";
	}else if(bookName.equals("B")){
		viewPageURI = "module/b.jsp";
	}else if(bookName.equals("C")){
		viewPageURI = "module/c.jsp";
	}
%>

<%-- forward action tag --%>
<jsp:forward page="<%=viewPageURI %>">
	<jsp:param name="bookType" value="fiction"/>
</jsp:forward>
