<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h3>MEMBER 목록</h3>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>휴대폰</td>
			<td>직급</td>
			<td>부서</td>
			<td>날짜</td>
			<td>설정</td>
		</tr>
		<c:forEach  var="member" items="${members}">
			<tr>
				<td>${member.uid}</td>
				<td>${member.name}</td>
				<td>${member.hp}</td>
				<td>${member.pos}</td>
				<td>${member.dep}</td>
				<td>${member.rdate}</td>
				<th>
					<a href="/ch08/member/modify?uid=${member.uid}">수정</a>
					<a href="/ch08/member/delete?uid=${member.uid}">삭제</a>
				<th>
			</tr>
		</c:forEach>
	</table>
	<a href="/ch08/member/register">등록하기</a>
</body>
</html>