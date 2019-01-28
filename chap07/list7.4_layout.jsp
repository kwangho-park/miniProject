<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>layout</title>
</head>
<body>

	<table width="400" border="1">
	<tr>
		<td colspan="2">
			<jsp:include page="/chap07/module/top.jsp" flush="false" />
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="/chap07/module/left.jsp" flush="flase" />
		</td>
		<td>
			content (내용)
		</td>
	</tr>
	<tr>
		<td  colspan="2">
			<jsp:include page="/chap07/module/bottom.jsp" flush="flase" />
		</td>
	</tr>


</table>


</body>
</html>