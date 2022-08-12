function jsSubmit() {
	
	var pwchk = document.querySelector("#pwchk");
	var rechk = document.querySelector("#rechk");
	
	var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var psValue = pwchk.value;
	var reValue = rechk.value;
	
	if (pwreg.test(psValue) && psValue.equals(reValue)){
		alert("수정이 완료 되었습니다.");
		return true;
	} else {
		alert("수정 정보를 정확히 입력해 주세요.");
		return false;

	}
};
	
	
