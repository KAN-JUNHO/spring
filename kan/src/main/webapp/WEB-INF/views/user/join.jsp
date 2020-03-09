<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<body>
	<h3>kan 고객 등록</h3>
	
	<form action="/kan/index.html" method="POST">
		<table border="1">
			<tr>
				<td>아이디(15자이내)</td>
				<td><input type="text" name="id" /></td>			
			</tr>

			<tr>
                <td>패스워드</td>
                <td><input type="password" name=pass1></td>
			</tr>
			
			<tr>
                <td>패스워드 확인</td>
                <td><input type="password" name=pass2></td>
			</tr>
			
			<tr>
				<td>이름(10자이내)</td>
				<td><input type="text" name="name" /></td>			
			</tr>
			<tr>
				<td>휴대폰(11자리)</td>
				<td><input type="text" name="hp" /></td>			
			</tr>


			<tr>
				<td colspan="2" align="right"><input type="submit" value="등록하기"/></td>			
			</tr>
		</table>
	</form>
	
	<a href="../">이전단계</a>
</body>
</html>