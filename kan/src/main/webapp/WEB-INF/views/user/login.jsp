<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<body>
	<h3>kan 로그인</h3>
	
	<form action="/kan/user/login" method="post">
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
				<td colspan="2" align="right"><input type="submit" value="로그인"></td>			
			</tr>
			

		</table>
	</form>
	

	
	<a href="../index">이전단계</a>
</body>
</html>