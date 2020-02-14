<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
</head>
<body>
	<h3>Member 수정</h3>
	
	<form action="/ch08/member/modify" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" readonly="readonly" value="${member.uid}" /></td>			
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${member.name}"/></td>			
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp" value="${member.hp}"/></td>			
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="pos">
						<option>사원</option>
						<option>대리</option>
						<option>과장</option>
						<option>차장</option>
						<option>부장</option>					
					</select>
				</td>			
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="dep">
						<option>101</option>
						<option>102</option>
						<option>103</option>
						<option>104</option>
						<option>105</option>
					</select>
				</td>			
			</tr>			
			<tr>
				<td colspan="2" align="right"><input type="submit" value="수정하기"/></td>			
			</tr>
		</table>
	</form>
</body>
</html>