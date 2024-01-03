function memberUpdateCheck() {
	var pwField = document.memberUpdateForm.pw;
	var pwChkField = document.memberUpdateForm.pwChk;
	var nameField = document.memberUpdateForm.name;
	var addr1Field = document.memberUpdateForm.addr1;
	var addr2Field = document.memberUpdateForm.addr2;
	var addr3Field = document.memberUpdateForm.addr3;
	var photoField = document.memberUpdateForm.photo;

	if (isEmpty(pwField) || lessThan(pwField, 4)
		|| notContains(pwField, "1234567890") || notEquals(pwField, pwChkField)) {
		alert("PW?");
		pwField.value = ""; pwChkField.value = "";
		pwField.focus();
		return false;
	}
	if (isEmpty(nameField)) {
		alert("이름?");
		nameField.value = "";
		nameField.focus();
		return false;
	}
	if (isEmpty(addr1Field) || isEmpty(addr2Field) || isEmpty(addr3Field)) {
		alert("주소?");
		addr1Field.value = ""; addr2Field.value = ""; addr3Field.value = "";
		addr1Field.focus();
		return false;
	}
	if (isEmpty(photoField)) {
		return true;
	}
	if (isNotType(photoField, "png")
		&& isNotType(photoField, "jpg")
		&& isNotType(photoField, "gif")) {
		alert("프사?");
		photoField.value = "";
		return false;
	}
	return true;
}

function joinCheck() {
	var idField = document.joinForm.id;
	var pwField = document.joinForm.pw;
	var pwChkField = document.joinForm.pwChk;
	var nameField = document.joinForm.name;
	var addr1Field = document.joinForm.addr1;
	var addr2Field = document.joinForm.addr2;
	var addr3Field = document.joinForm.addr3;
	var photoField = document.joinForm.photo;

	if (isEmpty(idField) || containsHS(idField)) {
		alert("ID?");
		idField.value = "";
		idField.focus();
		return false;
	}
	if (isEmpty(pwField) || lessThan(pwField, 4)
		|| notContains(pwField, "1234567890") || notEquals(pwField, pwChkField)) {
		alert("PW?");
		pwField.value = ""; pwChkField.value = "";
		pwField.focus();
		return false;
	}
	if (isEmpty(nameField)) {
		alert("이름?");
		nameField.value = "";
		nameField.focus();
		return false;
	}
	if (isEmpty(addr1Field) || isEmpty(addr2Field) || isEmpty(addr3Field)) {
		alert("주소?");
		addr1Field.value = ""; addr2Field.value = ""; addr3Field.value = "";
		addr1Field.focus();
		return false;
	}
	if (isEmpty(photoField)
		||
		(isNotType(photoField, "png") &&
			isNotType(photoField, "jpg") &&
			isNotType(photoField, "gif"))) {
		alert("프사?");
		photoField.value = "";
		return false;
	}
	return true;
}

function loginCheck() {
	var idField = document.loginForm.id;
	var pwField = document.loginForm.pw;
	if (isEmpty(idField) || isEmpty(pwField)) {
		alert("?");
		idField.value = "";
		pwField.value = "";
		idField.focus();
		return false;
	}
	return true;
}

function snsReplyWriteCheck(f) {
	var txtField = f.txt;
	if (isEmpty(txtField)) {
		alert("?");
		txtField.value = "";
		txtField.focus();
		return false;
	}
	return true;
}

function snsWriteCheck() {
	var txtField = document.snsWriteForm.txt;
	if (isEmpty(txtField)) {
		alert("?");
		txtField.value = "";
		txtField.focus();
		return false;
	}
	return true;
}
