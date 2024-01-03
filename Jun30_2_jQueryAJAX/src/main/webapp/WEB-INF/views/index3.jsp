<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "http://openapi.seoul.go.kr:8088/575a4655496b636839386f58586542/json/RealtimeCityAir/1/25/",
			success : function(zcxv) {
				var pm10Ar = [];
				var pm25Ar = [];
				$.each(zcxv.RealtimeCityAir.row, function(i, a) {
					pm10Ar[i] = { y: a.PM10, label: a.MSRSTE_NM };
					pm25Ar[i] = { y: a.PM25, label: a.MSRSTE_NM };
				});
				
				var chart = new CanvasJS.Chart("chartContainer", {
					title: {
						text: "서울시 미세먼지"
					},
					data: [
						{
							type: "stackedColumn",
							dataPoints: pm10Ar
						},  
						{
							type: "stackedColumn",
							dataPoints: pm25Ar
						}
					]
				});
			    chart.render();
			}
		});
	});
</script>
</head>
<body>
	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<hr>
	<table border="1">
		
	</table>
</body>
</html>


