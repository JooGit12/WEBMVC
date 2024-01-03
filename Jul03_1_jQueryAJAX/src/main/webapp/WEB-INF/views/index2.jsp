<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function(){
		// AJAX(Asynchronous Javascript And	Xml)
		// 		자바스크립트로 비동기식 통신을 해서 XML파싱
		//		브라우저의 동일 출처 정책 -> 외부 데이터 사용 불가
		//
		// Cross-Domain AJAX
		//		외부 데이터 가져오는 AJAX
		//		1) 서버측에서 응답헤더(Access-Control-Allow-Origin) 설정 해놨으면
		//		2) 안해놨으면 -> Proxy 서버
		
		// $.ajax({
		//		url : "프로토콜://..../주소",
		//		data : { param명 : 값, param명 : 값, ... },
		//		beforeSend : function (요청객체) {
		//			요청객체.setRequestHeader("이름", "값");
		//		},
		//		success : function (받은거) {
		//			...
		//		} 
		// });
		$("button").click(function() {
			$.ajax({
				url : "weather.get",
				data : { zone : 1111061500 },
				success : function(zxc) {
					var ar = [];
					$(zxc).find("data").each(function(i, w){
						if ($(w).find("day").text() == "0") {
							ar[i] = {
								x : $(w).find("hour").text() * 1, // str -> int 
								y : $(w).find("temp").text() * 1
							};
							var hourTd = $("<td></td>").text($(w).find("hour").text());			
							var tempTd = $("<td></td>").text($(w).find("temp").text());			
							var wfKorTd = $("<td></td>").text($(w).find("wfKor").text());			
							var tr = $("<tr></tr>").append(hourTd, tempTd, wfKorTd);
							$("table").append(tr);
						}
					});
					
					var chart = new CanvasJS.Chart("chartContainer",{
						title: {text: "오늘 날씨"},
						data: [
							{
								type: "line",
								dataPoints: ar
							}
						]
					});
					chart.render();
				}
			});
		});
	});
</script>
</head>
<body>
	<button>버튼</button>
	<hr>
	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<hr>
	<table border="1"></table>
</body>
</html>




