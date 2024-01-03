<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 100%;
}

img {
	width: 80%;
}
</style>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<script type="text/javascript">
	function deleteMemo(txt){
		$.getJSON("http://localhost:9999/memo.delete?txt="+txt, function(result){
			showMemo();
		});
	}
	function showMemo() {
		$.getJSON("http://localhost:9999/memo.get", function(result) {
			$("ul").empty();
			$.each(result, function(i, m){
				var d2 = Date.parse(m.m_date);
				var d3 = new Date(d2);
				var d4 = "&nbsp;&nbsp;&nbsp;" + d3.getFullYear() + "/"; 
				d4 += (d3.getMonth() + 1) + "/" + d3.getDate();
				var br = $("<br>");			
				var br2 = $("<br>");
				var li = $("<li></li>").attr("onclick", "deleteMemo('"+m.m_txt+"');").append(m.m_txt, br, br2, d4);
				$("ul").append(li);
			});
			// jQuery로 동적으로 listview에 넣은것들 디자인 적용
			$("ul").listview("refresh"); 
		});
	}
	
	$(function(){
		showMemo();
		$("input").keyup(function(e){
			if (e.keyCode == 13) {
				var txt = $(this).val();
				$.getJSON("http://localhost:9999/memo.reg?txt=" + txt, function(result) {
					alert("OK");
					showMemo();
				});
				$(this).val("");
			}
		});
	});
</script>
</head>
<body>
	<div data-role="page" id="coverPage">
		<div data-role="header" data-position="fixed">
			<h1>메모</h1>
		</div>
		<div data-role="content">
			<table>
				<tr>
					<td align="center"><a href="#mainPage" data-transition="flip">
							<img src="resources/jjan.jpg">
					</a></td>
				</tr>
			</table>
		</div>
	</div>
	<!-- ------------------------------------------ -->
	<div data-role="page" id="mainPage">
		<div data-role="header" data-position="fixed">
			<a href="#coverPage" data-icon="arrow-l">뒤로</a>
			<h1>메모</h1>
		</div>
		<div data-role="content">
			<ul data-role="listview">

			</ul>
		</div>
		<div data-role="footer" data-position="fixed">
			<input>
		</div>
	</div>
</body>
</html>





