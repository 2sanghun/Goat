<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<link rel="stylesheet"
	href="../../../resources/CSS/signup.css?version=1.3" type="text/css">
<script type="text/javascript"
	src="../../../resources/JS/signup.js?version=1.1"></script>
<script type="text/javascript"
	src="../../../resources/JS/effective.js?version=1.1"></script>
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
						<td></td>
						<td>E-mail</td>
						<td colspan="2"><input type="text" id="email" name="email"
							maxlength='20' class="box"> @ <select name="email"
							class="emailselect">
								<option value="@naver.com">naver.com</option>
								<option value="@daum.com">daum.com</option>
								<option value="@google.com">gmail.com</option>
						</select></td>
					</tr>
					<tr>
						<td>*</td>
						<td>전화번호</td>
						<td><input type="text" name="phone" id="numchk"
							maxlength='11' class="box"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="nummsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>생년월일</td>
						<td><input type="text" name="birth" id="bdchk" maxlength='8'
							placeholder="예: 19951019" class="box"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="bdmsg" class="msg"></span></td>
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
						<td><input type="text" id="addr" name="addr" maxlength='30'
							class="box"></td>
					</tr>

				</table>
				<input type="submit" value="가입" id="signup" class="button">
				<a href="../header/login" class="cancle"><input type="button"
					value="취소" class="button"></a>
			</div>
		</form>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>