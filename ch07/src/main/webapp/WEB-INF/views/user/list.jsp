<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>list</title>
</head>
<body>
	<h3>직원 목록</h3>
	
	<c:forEach var="user" items="${users}">
		<p>
			아이디 : ${user.uid}<br>
			이름 : ${user.name}<br>
			휴대폰 : ${user.hp}<br>
			나이 : ${user.age}<br>		
		</p>	
	</c:forEach>
	
	
	
	
</body>
</html>