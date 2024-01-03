<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>그래픽 기반의 실시간 AI서비스를 활용한 cross-platform 개발자 양성과정</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/sns.css">
<script type="text/javascript" src="js/kwonValidChecker.js"></script>
<script type="text/javascript" src="js/gbraucpCheck.js"></script>
<script type="text/javascript" src="js/gbraucpMove.js"></script>
</head>
<body>
	<table id="siteTitleArea">
		<tr>
			<td align="center" id="siteMenuArea">
				<table>
					<tr>
						<td align="center"><a href="SNSController">SNS</a></td>
						<td align="center"><a href="">?</a></td>
						<td align="center"><a href="">?</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table id="siteTitle">
					<tr>
						<td>
							<a href="HomeController">그래픽 기반의 실시간 AI서비스를 활용한 cross-platform 개발자 양성과정 카페</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table id="siteLoginArea">
		<tr>
			<td align="center">
				<jsp:include page="${loginPage }"></jsp:include>
			</td>
		</tr>
	</table>
	<table id="siteContentArea">
		<tr>
			<td align="center">
				<jsp:include page="${contentPage }"></jsp:include>
			</td>
		</tr>
	</table>
	<div id="resultDiv">${result }</div>
</body>
</html>




