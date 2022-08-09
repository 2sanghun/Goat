window.addEventListener('load' = function() {
	// 아이디
	var idchk = document.querySelector("#idchk");
	idchk.onblur = function() {
		var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
		var idValue = idchk.value;
		var idmsg = document.querySelector("#idmsg");
		if (idreg.test(idValue)) {
			idmsg.innerHTML = "";
		} else {
			idmsg.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
			idmsg.style.color = "red";
		}
	} 
	
	// 패스워드
	var pwchk = document.querySelector("#pwchk");
	pwchk.onblur = function() { 
		// (?=.*[문자]) 정규식 패턴은 해당 문자가 필수로 포함되어야 하는 경우에 사용하는 정규식이다.
		var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
		var pwValue = pwchk.value;
		var pwmsg = document.querySelector("#pwmsg");
		if (pwreg.test(pwValue)) {
			pwmsg.innerHTML = "";
		} else {
			pwmsg.innerHTML = "8~16자 영문, 숫자, 특수문자를 사용하세요.";
			pwmsg.style.color = "red";
		}
	}
	
	// 비밀번호 재확인
	var rechk = document.querySelector("#rechk");
	rechk.onblur = function() {
		var pwValue = pwchk.value;
		var reValue = rechk.value;
		var remsg = document.querySelector("#remsg");
		if (pwValue==reValue) {
			remsg.innerHTML = "";
		} else {
			remsg.innerHTML = "비밀번호가 일치하지 않습니다.";
			remsg.style.color = "red";
		}
	}
	
	// 전화번호
	var numchk1 =  document.querySelector("#numchk1");
	var numchk2 =  document.querySelector("#numchk2");
	var nummsg = document.querySelector("#nummsg");
	var numreg = /^(?=.*[0-9]).{3,4}$/;
	numchk1.onblur = function(){
		var numValue1 = numchk1.value;
		var numValue2 = numchk2.value;
		if(numreg.test(numValue1) && numreg.test(numValue2)){
			nummsg.innerHTML = "";
		} else {
			nummsg.innerHTML = "양식에 맞게 입력해주세요";
			nummsg.style.color = "red";
		}
	}
	numchk2.onblur = function(){
		var numValue1 = numchk1.value;
		var numValue2 = numchk2.value;
		if(numreg.test(numValue1) && numreg.test(numValue2)){
			nummsg.innerHTML = "";
		} else {
			nummsg.innerHTML = "양식에 맞게 입력해주세요";
			nummsg.style.color = "red";
		}
	}
	
	// 생년월일
	var bdchk1 =  document.querySelector("#bdchk1");
	var bdchk2 =  document.querySelector("#bdchk2");
	var bdreg1 = /^(?=.*[0-9]).{4,4}$/;
	var bdreg2 = /^(?=.*[0-9]).{1,2}$/;
	var bdmsg = document.querySelector("#bdmsg");
	bdchk1.onblur = function(){
		var bdValue1 = bdchk1.value;
		var bdValue2 = bdchk2.value;
		if(bdreg1.test(bdValue1) && bdreg2.test(bdValue2)){
			bdmsg.innerHTML = "";
		} else {
			bdmsg.innerHTML = "양식에 맞게 입력해주세요";
			bdmsg.style.color = "red";
		}
	}
	bdchk2.onblur = function(){
		var bdValue1 = bdchk1.value;
		var bdValue2 = bdchk2.value;
		if(bdreg1.test(bdValue1) && bdreg2.test(bdValue2)){
			bdmsg.innerHTML = "";
		} else {
			bdmsg.innerHTML = "양식에 맞게 입력해주세요";
			bdmsg.style.color = "red";
		}
	}
});
