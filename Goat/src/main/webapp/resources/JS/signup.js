function jsSubmit(){
	var idchk = document.querySelector("#idchk");
	var pwchk = document.querySelector("#pwchk");
	var rechk = document.querySelector("#rechk");
	var numchk1 =  document.querySelector("#numchk1");
	var numchk2 =  document.querySelector("#numchk2");
	var bdchk1 =  document.querySelector("#bdchk1");
	var bdchk2 =  document.querySelector("#bdchk2");
	var nickname =  document.querySelector("#nickname");
	var addr =  document.querySelector("#addr");
	var name =  document.querySelector("#name");

	
	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var numreg = /^(?=.*[0-9]).{3,4}$/;
	var bdreg1 = /^(?=.*[0-9]).{4,4}$/;
	var bdreg2 = /^(?=.*[0-9]).{1,2}$/;
	var blank = /[\s]/g;
	
	var idValue = idchk.value;
	var psValue = pschk.value;
	var reValue = rechk.value;
	var numValue1 = numchk1.value;
	var numValue2 = numchk2.value;
	var bdValue1 = bdchk1.value;
	var bdValue2 = bdchk2.value;
	var nickValue = nickname.value;
	var addrValue = addr.value;
	var nameValue = name.value;
	
	if(idreg.test(idValue) && 
		pwreg.test(psValue) && 
		psValue.equals(reValue) &&
		numreg.test(numValue1) && 
		numreg.test(numValue2) &&
		bdreg1.test(bdValue1) && 
		bdreg2.test(bdValue2) &&
		!balck.test(nickValue) &&
		!balck.test(addrValue) &&
		!balck.test(nameValue)
		){
		alert("가입이 완료 되었습니다.");
		return true;
	}else{
		alert("가입 정보를 정확히 입력해 주세요.");
		return false;
	}
}