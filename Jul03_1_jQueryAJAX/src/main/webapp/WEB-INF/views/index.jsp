<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8ea152f2d8afe28b90a9db5e9f465dd5"></script>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function() {
		//REST API 키	b159d788bacf5fc0bbb9779600c92fa5
		//JavaScript 키	8ea152f2d8afe28b90a9db5e9f465dd5
		// GPS있으면 GPS로, 없으면 IP주소로
		navigator.geolocation.getCurrentPosition(function(l) {
			var lat = l.coords.latitude; // 위도
			var lng = l.coords.longitude; // 경도
			///////////////////////////////////////////////
			var curLoc = new kakao.maps.LatLng(lat, lng); 
			var container = document.getElementById('map');
			var options = { 
				center: curLoc,
				level: 3,
				mapTypeId: kakao.maps.MapTypeId.ROADMAP
			};
			var map = new kakao.maps.Map(container, options);
			///////////////////////////////////////////////
			var container2 = document.getElementById('rv');
			var roadview = new kakao.maps.Roadview(container2);
			var roadviewClient = new kakao.maps.RoadviewClient();
			roadviewClient.getNearestPanoId(curLoc, 50, function(p){
				roadview.setPanoId(p);
			});
			///////////////////////////////////////////////
			var marker = new kakao.maps.Marker({
			    map: map,
			    position: curLoc
			});			
			///////////////////////////////////////////////
		});
	});
</script>
</head>
<body>
	지역명 : <input><br>
	검색어 : <input><hr>
	<table style="width:100%;">
		<tr>
			<td style="width:50%;">
				<div id="map" style="width:100%;height:250px;"></div>
			</td>
			<td style="width:50%;">
				<div id="rv" style="width:100%;height:250px;"></div>
			</td>
		</tr>
	</table>
	<hr>	
</body>
</html>


