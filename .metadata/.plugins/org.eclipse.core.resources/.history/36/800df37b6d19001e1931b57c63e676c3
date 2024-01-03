<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img{
	width: 150px;
}
</style>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	function getShopping(start){
		var search = encodeURIComponent($("input").val());
		$.ajax({
			url : "shopping.get",
			data : { q : search, s : start },
			beforeSend : function(req) {
				req.setRequestHeader("ni", "VewZqL22TvZP9yJsljMS");
				req.setRequestHeader("ns", "1UiRCf2mgO");
			},
			success : function(data){
				if (start == 1) {
					$("table").empty();
				}
				$(data).find("item").each(function(i, item){
					var img = $("<img>").attr("src", $(item).find("image").text());
					var imgTd = $("<td></td>").append(img);
					var titleTd = $("<td></td>").html($(item).find("title").text());
					var priceTd = $("<td></td>").text($(item).find("lprice").text());
					var tr = $("<tr></tr>").append(imgTd, titleTd, priceTd);
					$("table").append(tr);
				});
			}
		});
	}

	$(function(){
		var start = 0;
		$("button").click(function(){
			start = 1;
			getShopping(start);
		});
		
		var get = true;
		$(window).scroll(function(){
			var htmlHeight = $(document).height();
			var browserHeight = $(window).height();
			var browserOffsetTop = $(window).scrollTop();
			var browserOffsetBottom = browserOffsetTop + browserHeight;
			
			if (browserOffsetBottom >= htmlHeight - 10 && get) {
				start += 10;
				getShopping(start);
				get = false;
			} else {
				get = true;
			}
		});
		
		$("input").keyup(function(){
			$("button").trigger("click");
		});
	});
</script>
</head>
<body>
	<input><button>검색</button>
	<table border="1"></table>
</body>
</html>




