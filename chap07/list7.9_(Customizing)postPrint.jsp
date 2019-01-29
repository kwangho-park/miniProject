<%@ page contentType="text/html; charset=UTF-8"%>

<hr>
<h1>입력된 게시글</h1>

도서명(bookName) : <%=request.getParameter("bookName") %><br> 
	
작가명(writer) 	 : <%=request.getParameter("writer") %><br>

게시글 번호 : <%= request.getParameter("number") %><br>

게시글 날짜 : <%=request.getAttribute("date") %>


