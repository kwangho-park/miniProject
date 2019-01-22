<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>폼 생성</title>
</head>

<body>
	<!-- 서버에 폼을 전송하는 방식 method attribute : post -->
	<form action="list3.15_viewParameter.jsp" method="post">
	
		이름 : <input type="text" name="name" size="10"> <br>
		주소 : <input type="text" name="address" size="30"> <br>
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="dog">강아지
			<input type="checkbox" name="pet" value="cat">고양이
			<input type="checkbox" name="pet" value="pug">돼지
		<br>
		<input type="submit" value="서버로 전송합니다">	
		
	</form>


</body>
</html>