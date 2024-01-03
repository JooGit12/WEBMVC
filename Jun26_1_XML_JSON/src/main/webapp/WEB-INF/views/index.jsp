<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function(){
		$("button").click(function(){
			$.ajax({
				url : "snack.get",
				success : function(zxc) {
					$(zxc).find("snack").each(function(i, s){
						alert($(s).find("s_name").text());
						alert($(s).find("s_price").text());
					});
				} 
			});
		});
		
		$("input").click(function(){
			$.ajax({
				url : "menu.get",
				data : { page : 1 },
				success : function(asd) {
					$.each(asd.menu, function(i, m){
						alert(m.m_name);
						alert(m.m_price);
					});
				}
			});
		});
	});
</script>
</head>
<body>
	<input>
	<button>버튼</button>
</body>
</html>




