function connectSummonSNSControlAreaEvent() {
	var visible = false;
	// .css("opacity", "1"); .css("opacity", "0");
	var snsControlAreaHeight = $("#snsControlArea").css("height"); // 100px
	if (snsControlAreaHeight != null) {
		snsControlAreaHeight = snsControlAreaHeight.replace("px", ""); // 100
		snsControlAreaHeight -= 40; // 60

		// bottom을 -60px로(밖으로)
		$("#snsControlArea").css("bottom", "-" + snsControlAreaHeight + "px");

		$("#snsControlAreaHandle").click(function() {
			if (visible) {
				$("#snsControlArea").css("bottom", "-" + snsControlAreaHeight + "px");
			} else {
				$("#snsControlArea").css("bottom", "0px");
			}
			visible = !visible;
		});
	}
}

function connectChangeTitleColorEvent() {
	setInterval(function() {
		if ($("#siteTitle a").css("color") == "rgb(255, 255, 255)") {
			$("#siteTitle a").css("color", "black");
			$("#siteTitle a").css("text-shadow", "2px 2px 2px white");
		} else {
			$("#siteTitle a").css("color", "white");
			$("#siteTitle a").css("text-shadow", "2px 2px 2px #B71C1C");
		}
	}, 1000);
}

function connectCloseSNSUpdateAreaEvent() {
	$("#x").click(function() {
		$("#blackArea").css("opacity", "0");
		setTimeout(function() {
			$("#blackArea").css("left", "-100%");
			$("#blackArea").css("top", "-100%");
		}, 300);
	});
}
function connectSummonAddressSearchAreaEvent() {
	$("#memberJoinAddr1, #memberJoinAddr2").click(function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // alert(data);
	        	// JS객체 -> 글자
	        	// alert(JSON.stringify(data));
	        	$("#memberJoinAddr1").val(data.zonecode);
	        	$("#memberJoinAddr2").val(data.roadAddress);
	        }
	    }).open();
	});
}

function connectSummonTitleAreaEvent() {
	$("#siteTitleArea").mouseenter(function() {
		$("#siteTitleArea").css("top", "0px");
	});
	$("#siteTitleArea").mouseleave(function() {
		$("#siteTitleArea").css("top", "-50px");
	});
}

function connectMemberIDCheckEvent(){
	$("#memberJoinID").keyup(function(e) {
		//if (e.keyCode == 65) {
			var id = $(this).val();
			$.ajax({
				url : "member.get",
				data : {gm_id : id},
				success : function(memberData) {
					if (memberData.members[0] == null) {
						$("#memberJoinID").css("color", "white");
					} else {
						$("#memberJoinID").css("color", "red");
					}
				}
			});
		//}
	});
}

$(function() {
	connectChangeTitleColorEvent();
	connectCloseSNSUpdateAreaEvent();
	connectMemberIDCheckEvent();
	connectSummonAddressSearchAreaEvent();
	connectSummonSNSControlAreaEvent();
	connectSummonTitleAreaEvent();
});



