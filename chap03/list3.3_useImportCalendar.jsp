<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
<% 
	Calendar cal = Calendar.getInstance();
%>	
	오늘은 
	<%=cal.get(Calendar.YEAR) %> 년
	<%=cal.get(Calendar.MONTH) %> 월
	<%=cal.get(Calendar.DATE) %> 일	
	입니다.
		
</body>
</html>