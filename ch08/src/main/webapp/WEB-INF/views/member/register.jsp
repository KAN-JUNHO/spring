<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<body>
	<h3>USER 등록</h3>
	
	<form action="/ch08/member/register" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name=hp></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><input type="text" name="pos"></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><input type="text" name="dep"></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><input type="text" name="rdate"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="right"><input type="submit" value="등록하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>