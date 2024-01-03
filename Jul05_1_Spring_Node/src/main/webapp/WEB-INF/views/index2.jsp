<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	function showSnack() {
		$.getJSON("http://localhost:8888/snack.get", function(cxzv) {
			$("table").empty();
			$.each(cxzv, function(i, s){
				var nameTd = $("<td></td>").text(s.s_name);
				var priceTd = $("<td></td>").text(s.s_price);
				var tr = $("<tr></tr>").append(nameTd, priceTd);
				$("table").append(tr);
			});
		});
	}

	$(function(){
		showSnack();
		
		$("button").click(function(){
			var name = $("#nameInput").val();
			var price = $("#priceInput").val();
			var u = "http://localhost:8888/snack.reg?n=" + name + "&p=" + price;
			
			$.getJSON(u, function(asd){
				alert("등록 성공");
				showSnack();
			});
			
			$("#nameInput").val("");
			$("#priceInput").val("");
		});
	});
</script>
</head>
<body>
	이름 : <input id="nameInput"><p>
	가격 : <input id="priceInput"><p>
	<button>등록</button>
	<hr>
	<table border="1"></table>
</body>
</html>