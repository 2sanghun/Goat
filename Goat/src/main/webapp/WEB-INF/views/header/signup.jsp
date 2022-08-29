<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<link rel="stylesheet" href="../../../resources/CSS/signup.css?version=1.1" type="text/css">
<script type="text/javascript" src="../../../resources/JS/signup.js?version=1.1"></script>
<script type="text/javascript" src="../../../resources/JS/effective.js?version=1.1"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
		<h1 id="signupcss">회원가입</h1>
		<div id="top">
			<span style="color:red;">*</span>은 필수 입력입니다.
		</div>
		<form action="/header/signup" method="post" onsubmit="return jsSubmit();">
		<div id="main">
			<table>
				<tr>
					<td>*</td>
					<td>아이디</td>
					<td><input type="text" id="idchk" name="id" maxlength='20'> 
					<input type="button" value="중복확인" onclick="idCheck()">
					<span id="idmsg"></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호</td>
					<td><input type="password" id="pwchk" name="password" maxlength='20'><span id="pwmsg"></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호 재확인</td>
					<td><input type="password" id="rechk" maxlength='20'><span id="remsg" ></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>닉네임</td>
					<td><input type="text" id="nickname" name="nick" maxlength='10'></td>
				</tr>
				<tr>
					<td>*</td>
					<td>주소</td>
					<td><input type="text" id="addr" name="addr" maxlength='30'></td>
				</tr>
				<tr>
					<td>*</td>
					<td>전화번호</td>
					<td>
						<input type="text" name="phone" id="numchk" maxlength='11'>
						<span id="nummsg"></span>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>E-mail</td>
					<td>
						<input type="text" id="email" name="email" maxlength='20'>
						@
						<select name="email">
							<option value="@naver.com">naver.com</option>
							<option value="@daum.com">daum.com</option>
							<option value="@google.com">google.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>*</td>
					<td>이름</td>
					<td><input type="text" id="name" name="name" maxlength='10'></td>
				</tr>
				<tr>
					<td>*</td>
					<td>생년월일</td>
					<td>
						<input type="text"	name="birth" id="bdchk" maxlength='8' placeholder="8자">
						<span id="bdmsg"></span>
					</td>
				</tr>
			</table>
			<input type="submit" value="가입하기" id="signup" class="button">
			<a href="../header/login"><input type="button" value="취소" class="button"></a>
		</div>
		</form>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>