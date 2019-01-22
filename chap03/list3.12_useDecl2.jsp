<!-- page directive -->
<%@ page contentType="text/html; charset=UTF-8"%>


<!-- 선언부 -->
<%!
	// 덧셈을 연산하는 method
	public int add(int a, int b){
		int c = a + b;
		return c;
	}
	
	// 뻴셈을 연산하는 method
	public int subtract(int a, int b){
		int c = a - b;
		return c;
	}

%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>


<body>

<!-- script let -->
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
%>

<!-- 표현식  -->
<%= value1 %> + <%= value2 %> = <%=addResult %>
<br>
<%= value1 %> - <%= value2 %> = <%=subtractResult %>


</body>
</html>



