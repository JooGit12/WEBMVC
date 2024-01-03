function bye() {
	var really = prompt("탈퇴하려면 ㅃㅇ라 입력");
	if (really == "ㅃㅇ") {
		location.href = "ByeController";
	}
}
function deleteSNSMsg(no) {
	if (confirm("ㄹㅇ?")) {
		location.href = "SNSDeleteController?no=" + no;
	}
}
function deleteSNSReply(no) {
	if (confirm("?")) {
		location.href = "SNSReplyDeleteController?no=" + no;
	}
}
function updateSNSMsg(no, txt) {
	txt = prompt("수정할 내용", txt);
	if (txt != null && txt.length < 251) {
		location.href = "SNSUpdateController?no=" + no + "&txt=" + txt;
	}
}











