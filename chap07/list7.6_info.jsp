<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head><title>info</title></head>
<body>
	<table border ="1px">
	<tr>
		<td>제품번호</td><td>1</td>
	</tr>
	<tr>
		<td>가격</td><td>20,000원</td>
	</tr>
	</table>
	
	<jsp:include page="list7.7_infoSub.jsp" flush="false">
		<jsp:param name="type" value="A" />
	</jsp:include>
	
</body>
</html>