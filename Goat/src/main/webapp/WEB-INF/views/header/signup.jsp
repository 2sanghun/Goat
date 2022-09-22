<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<link rel="stylesheet"
	href="../../../resources/CSS/signup.css?version=1.4" type="text/css">
<script type="text/javascript" src="../../../resources/JS/signup.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/effective.js?version=1.2"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>
		<h1 id="signupcss">회원가입</h1>
		<div id="top">
			회원 정보 입력 (필수 <span style="color: red;">*</span> )
		</div>
		<form action="/header/signup" method="post"
			onsubmit="return jsSubmit();">
			<div id="main">
				<table>
					<tr class="firstchild">
						<td>*</td>
						<td>이름</td>
						<td><input type="text" id="name" name="name" maxlength='10'
							class="box"></td>
					</tr>
					<tr>
						<td>*</td>
						<td>아이디</td>
						<td><input type="text" id="idchk" name="id" maxlength='20'
							class="box"></td>
						<td><input type="button" value="중복확인" onclick="idCheck()"
							class="idbtn"></td>
					</tr>
					<tr>

						<td></td>
						<td></td>
						<td colspan="2"><span id="idmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>비밀번호</td>
						<td><input type="password" id="pwchk" name="password"
							maxlength='20' class="box"></td>
					</tr>
					<tr>

						<td></td>
						<td></td>
						<td colspan="2"><span id="pwmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>비밀번호 확인</td>
						<td><input type="password" id="rechk" maxlength='20'
							class="box"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="remsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>E-mail</td>
						<td colspan="2"><input type="text" id="email" name="email"
							maxlength='20' class="box"> @ <select name="email"
							class="emailselect">
								<option value="@naver.com">naver.com</option>
								<option value="@daum.com">daum.net</option>
								<option value="@google.com">gmail.com</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="emmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>전화번호</td>
						<td><select name="phone" class="emailselect">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="019">019</option>
						</select> - <input type="text" name="phone" id="numchk1" maxlength='4'
							class="shortbox" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"> - <input type="text" name="phone"
							id="numchk2" maxlength='4' class="shortbox" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="nummsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>생년월일</td>
						<td><input type="date" name="birth" id="bdchk" class="box"></td>
					</tr>
					<tr>
						<td>*</td>
						<td>닉네임</td>
						<td><input type="text" id="nickname" name="nick"
							maxlength='10' class="box"></td>
					</tr>
					<tr>
						<td>*</td>
						<td>주소</td>
						<td>
							<input type="text" name="addr" id="addr1" placeholder="우편번호"> 
							<input type="button" id="addrButton" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" name="addr" id="addr2" placeholder="주소"><br>
							<input type="text" name="addr" id="addrDetail" placeholder="상세주소"> 
							<input type="text" name="addr" id="addrExtra" placeholder="참고항목">
						</td>
					</tr>
				</table>
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
					function sample6_execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 각 주소의 노출 규칙에 따라 주소를 조합한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if (data.userSelectedType === 'R') {
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraAddr !== '') {
												extraAddr = ' (' + extraAddr
														+ ')';
											}
											// 조합된 참고항목을 해당 필드에 넣는다.
											document
													.getElementById("addrExtra").value = extraAddr;

										} else {
											document
													.getElementById("addrExtra").value = '';
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document
												.getElementById('addr1').value = data.zonecode;
										document
												.getElementById("addr2").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document.getElementById(
												"addrDetail")
												.focus();
									}
								}).open();
					}
				</script>
				<input type="submit" value="가입" id="signup" class="button">
				<a href="../header/login" class="cancle"><input type="button"
					value="취소" class="button"></a>
			</div>
		</form>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>