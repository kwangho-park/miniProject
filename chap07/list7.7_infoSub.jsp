<%@ page contentType="text/html; charset=UTF-8" %>

<%
	String type = request.getParameter("type");
	
	if(type==null){
		return;
	}
%>

<br>

<table border="1px">
	<tr>
		<td>타입</td><td><%=type %></td>
	</tr>
	<tr>
		<td>특징</td><td>강한내구성</td>
	</tr>
</table>

<hr>
<%=request.getParameter("type")%>