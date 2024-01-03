<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.loginMember != null }">
		<form action="SNSWriteController" name="snsWriteForm" 
			onsubmit="return snsWriteCheck();">
			<table id="snsWriteTbl">
				<tr>
					<td align="center">
						<input name="token" value="${token }" type="hidden">
						<table>
							<tr>
								<td align="center">
									<textarea name="txt" 
										maxlength="250" placeholder="뭐"></textarea>
								</td>
								<td align="center">
									<button>쓰기</button>
								</td>
							</tr>					
						</table>
					</td>
				</tr>
			</table>
		</form>
	</c:if>
	<c:if test="${sessionScope.loginMember != null }">
		<div id="snsBlankArea"></div>
	</c:if>
	<form action="SNSSearchController">
		<table id="snsSearchArea">
			<tr>
				<td>
					<input name="search" maxlength="30" autocomplete="off">
				</td>
				<td>
					<button>검색</button>
				</td>
			</tr>
		</table>
	</form>
	<c:forEach var="sm" items="${msgs }">
		<table class="aMsg">
			<tr>
				<td align="center" rowspan="4" class="td1">
					<img src="img/${sm.gm_photo }">
				</td>
				<td class="td2">${sm.gs_writer }</td>
			</tr>
			<tr>
				<td align="right" class="td3">
					<fmt:formatDate value="${sm.gs_date }" type="both" dateStyle="long" timeStyle="short"/>
				</td>
			</tr>
			<tr>
				<td class="td4">${sm.gs_txt }</td>
			</tr>
			<tr>
				<td class="td5">
					
				</td>
			</tr>
			<c:if test="${sm.gs_writer == sessionScope.loginMember.gm_id }">
				<tr>
					<td align="right" colspan="2">
						<button onclick="updateSNSMsg(${sm.gs_no}, '${sm.gs_txt }');">수정</button>
						<button onclick="deleteSNSMsg(${sm.gs_no});">삭제</button>
					</td>
				</tr>
			</c:if>
		</table>
	</c:forEach>
	<c:if test="${page != 1 }">
		<a href="SNSPageController?page=${page - 1 }" class="snsL">&lt;</a>
	</c:if>
	<c:if test="${page != pageCount }">
		<a href="SNSPageController?page=${page + 1 }" class="snsR">&gt;</a>
	</c:if>
</body>
</html>








