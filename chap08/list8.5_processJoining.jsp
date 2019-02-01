
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 이 아이는 왜 필요한걸까? --%>
<%-- 읽어올 파라미터의 캐릭터 인코딩을 UTF-8로 지정 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="memberInfo" class="choi.MemberInfo" scope="request"/>
<%--[중요] MemberInfo class로 instance를 생성하여 request의 객체에 저장 --%>
<%--참조변수명 : memberInfo --%>

<%--request객체에 저장된 memberInfo instance의 property에 client에게 받은 parameter값을 저장--%>
<%--단, property명과 parameter명이 동일 할 경우--%>
<jsp:setProperty name="memberInfo" property="*"/>

<%--request객체에 저장된 memberInfo instance 의 password property에 값을 저장--%>
<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"/>


<html>
<head><title>가입완료</title></head>
<body>
	
	아이디 : <jsp:getProperty name="memberInfo" property="id"/><br>
	암호 : <jsp:getProperty name="memberInfo" property="password"/><br>
	이름 : <jsp:getProperty name="memberInfo" property="name"/><br>
	이메일 : <%=memberInfo.getEmail() %>

	  <%--
	이메일 : <jsp:getProperty name="memberInfo" property="email"/><br> 
	--%>


</body>
</html>