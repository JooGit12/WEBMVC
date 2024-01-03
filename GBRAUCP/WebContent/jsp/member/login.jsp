<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginController"
		method="post" 
		name="loginForm" 
		onsubmit="return loginCheck();">
		<table id="loginTbl">
			<tr>
				<td align="center">
					<input name="id" maxlength="10" placeholder="id" autocomplete="off">				
				</td>
			</tr>
			<tr>
				<td align="center">
					<input name="pw" maxlength="10" type="password" placeholder="pw">				
				</td>
			</tr>
			<tr>
				<td align="center">
					<button>로그인</button>			
					<a href="JoinController">회원가입</a>			
				</td>
			</tr>
		</table>
	</form>
</body>
</html>