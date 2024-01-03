<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table id="loginedTbl">
		<tr>
			<td align="center" rowspan="2" class="imgTd">
				<img src="img/${sessionScope.loginMember.gm_photo }">
			</td>
			<td>
				${sessionScope.loginMember.gm_id }
					(${sessionScope.loginMember.gm_name })
			</td>
		</tr>
		<tr>
			<td align="right">ㅎㅇ</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="MemberInfoController">정보확인</a>
				<a href="LoginController">로그아웃</a>
			</td>
		</tr>
	</table>
</body>
</html>





