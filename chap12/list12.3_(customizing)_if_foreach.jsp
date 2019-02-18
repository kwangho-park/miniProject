
<%-- (노트정리) 2 와 4의 공배수의 합 --%>

<%--page directive tag (JSP script element) --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%--taglib directive tag : library의 경로 명시--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>Insert title here</title></head>
<body>
	
	<%-- pageContext 기본 객체의 property 생성 및 초기화 --%>
	<c:set var="sum" value="0" scope="page"/>

		<%-- 반복문 for 역활 --%>	
		<%-- 흐름제어 태그가 생성하는 var 변수는 PAGE scope, 종료태그 이후 소멸 --%>
		<c:forEach var="loop" begin="0" end="10" step="2" > <%--2의 배수 --%>

			<%-- 조건문 if 역활 --%>
			<%-- 흐름제어 태그가 생성하는 test 변수는 사용불가로 추정됨!! --%>
			<c:if test = "${loop % 4 == 0}"><%--4의 배수 --%>
				<c:set var="sum" value="${sum + loop }" />		<%-- 동일 : ${ pageScope.sum + pageScope.loop }--%>
			</c:if>
		</c:forEach> 
	
	<%--default scope : PAGE --%>
	 2와 4의 공배수의 합 : ${sum}
	
</body>
</html>


	 <%--
	 위의 반복문과 동일한 기능의 자바소스 (노트정리)
	 for(int loop=0 ; loop<=10 ; loop+=2 ){
	 
		if(loop % 4 ==0){
	 		sum = sum + loop;
		}
	 }
	  --%>