window.addEventListener('load', function() {
	var signup = $("#signup");
	signup.attr("type", "button");
	signup[0].addEventListener('click', function() {
		if (signup.attr('type') == 'button') {
			alert("아이디 중복확인 해주세요.");
		}
	});
});

function idCheck() {
	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var id = $("#idchk").val();
	if (!idreg.test(id)) {
		alert("형식에 맞게 아이디를 입력해주세요.")
		return false;
	}
	$.ajax({
		type : 'post',
		url : "/header/idcheck",
		data : {
			"id" : id
		},
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				alert("중복된 아이디 입니다.");
			} else {
				alert("사용가능한 아이디 입니다.");
				$("#signup").attr("type", "submit");
			}
		}
	});
}

function jsSubmit() {
	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var numreg = /^(?=.*[0-9]).{7,8}$/;
	var emreg = /^[A-Za-z0-9_\.\-]/;

	var idValue = $("#idchk").val();
	var pwValue = $("#pwchk").val();
	var reValue = $("#rechk").val();
	var numV1 = $("#numchk1").val();
	var numV2 = $("#numchk2").val();
	var numValue = numV1.concat(numV2);
	var a = $("#bdchk").val();
	var b = a.replace(/-/g, '');
	var bdValue = b.replace(/-/g, '');
	var nickValue = $("#nickname").val();
	var addrValue1 = $("#addr1").val();
	var addrValue2 = $("#addrDetail").val();
	var nameValue = $("#name").val();
	var emailValue = $("#email").val();

	if (nameValue == '') {
		alert("이름를 입력해주세요.");
		return false;
	}
	;
	if (!idreg.test(idValue)) {
		alert("아이디를 중복확인 해주세요.");
		return false;
	}
	;
	if (!pwreg.test(pwValue)) {
		alert("비밀번호를 알맞게 입력해주세요.");
		return false;
	}
	;
	if (!(pwValue == reValue)) {
		alert("비밀번호를 재확인 해주세요.");
		return false;
	}
	;
	if (!emreg.test(emailValue)) {
		alert("이메일을 알맞게 입력해주세요.");
		return false;
	}
	;
	if (!numreg.test(numValue)) {
		alert("전화번호를 알맞게 입력해주세요.");
		return false;
	}
	;
	if (bdValue == '') {
		alert("생년월일를 알맞게 입력해주세요.");
		return false;
	}
	;
	if (nickValue == '') {
		alert("닉네임를 알맞게 입력해주세요.");
		return false;
	}
	;
	if (addrValue1 == '') {
		alert("주소를 입력해주세요.");
		return false;
	}
	;
	if (addrValue2 == '') {
		alert("자세한 주소를 입력해주세요.");
		return false;
	}
	;

	alert("가입이 완료 되었습니다.");
	return true;
	;
};

