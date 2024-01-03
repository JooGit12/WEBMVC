<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
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
	$(function() {
		var s = $(".slider").bxSlider({
			mode: 'vertical',
		    captions: true,
		    slideWidth: 120,
		    auto:true,
		    pause:3000
		});
		
		$("button").click(function() {
			var search = $("input").val();
			$.ajax({
				url : "https://dapi.kakao.com/v3/search/book",
				data : { query : search },
				beforeSend : function(req) {
					req.setRequestHeader("Authorization", "KakaoAK b159d788bacf5fc0bbb9779600c92fa5");
				},
				success : function(bookData) {
					$("table").empty();
					$(".slider").empty();
					$.each(bookData.documents, function(i, b) {
						var img = $("<img>").attr("src", b.thumbnail);
						var imgTd = $("<td></td>").append(img);
						var titleTd = $("<td></td>").text(b.title);
						var priceTd = $("<td></td>").text(b.price);
						var tr = $("<tr></tr>").append(imgTd, titleTd, priceTd);
						$("table").append(tr);
						
						var img2 = $("<img>").attr("src", b.thumbnail).attr("title", b.title);
						var div = $("<div></div>").append(img2);
						$(".slider").append(div);
					});
					s.reloadSlider();
				}
			});
		});
		
		$("input").keyup(function(e){
			$("button").trigger("click");
		});
		
	});
</script>
<style type="text/css">
div{
	width: 120px;
	height: 174px;
}
</style>
</head>
<body>
	<input> <button>검색</button>
	<hr>
	<div class="slider">
      <div>I am a slide.</div>
      <div>I am another slide.</div>
    </div>

	<hr>
	<table></table>
</body>
</html>


