function jsSubmit() {

	var idchk = document.querySelector("#idchk");
	var pwchk = document.querySelector("#pwchk");
	var rechk = document.querySelector("#rechk");
	var numchk = document.querySelector("#numchk");
	var bdchk = document.querySelector("#bdchk");
	var nickname = document.querySelector("#nickname");
	var addr = document.querySelector("#addr");
	var name = document.querySelector("#name");

	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var numreg = /^(?=.*[0-9]).{8,12}$/;
	var bdreg = /^(?=.*[0-9]).{8,8}$/;
	var blank = /[\s]/g;
	var idValue = idchk.value;
	var psValue = pwchk.value;
	var reValue = rechk.value;
	var numValue = numchk.value;
	var bdValue = bdchk.value;
	var nickValue = nickname.value;
	var addrValue = addr.value;
	var nameValue = name.value;

	if (idreg.test(idValue) && pwreg.test(psValue) && psValue.equals(reValue)
			&& numreg.test(numValue) && bdreg.test(bdValue)
			&& !black.test(nickValue) && !black.test(addrValue)
			&& !black.test(nameValue)) {
		alert("가입이 완료 되었습니다.");
		return true;
	} else {
		alert("가입 정보를 정확히 입력해 주세요.");
		return false;

	}
}