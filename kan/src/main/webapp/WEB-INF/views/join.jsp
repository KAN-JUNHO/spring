<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login</title>
</head>
<body>
	<h3>kan 고객 로그인</h3>
	
	<form action="/kan/index.html" method="POST">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" /></td>			
			</tr>

			<tr>
                <td>패스워드</td>
                <td><input type="password" name=pass1></td>
			</tr>

			<tr>
				<td colspan="2" align="right"><input type="submit" value="로그인"/></td>			
			</tr>
		</table>
	</form>
	
	<a href="../">이전단계</a>
</body>
</html>