<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<title>Insert title here</title>
</head>

<body>
	<%
	int sum = 0;
	int[] number = new int[10];
			
	for (int i=1 ; i<=10 ; i++){
		sum += i;
		number[i-1] = i;
	}
	%>


	<%= number[0] %> , <%= number[1] %> , <%= number[2] %> , <%= number[3] %>.... <%= number[9] %><br>

	
	모든 숫자의 합은 <%=sum %> 입니다.
	
</body>
</html>