<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/login.css?version=1.4" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.loginsession{
	height:700px;
}
</style>
</head>
<body>
	<div id="container">
		<div class="loginsession">
			<%@ include file="../header/header.jsp"%>
			<h1 id="logincss">아이디 찾기</h1>
			<form action="/header/idsearch" method="post">
				<input type="text" id="name" name="name" maxlength='10'class="input" placeholder="이름를 입력해주세요"> 
				<input type="text" name="phone" id="numchk" maxlength='11'class="input" placeholder="전화번호를 입력해주세요">
				<input type="text" name="birth" id="bdchk" maxlength='8' placeholder="예: 19951019" class="input" placeholder="생년월일를 입력해주세요"><br>
				<input type="submit" value="확인" class="loginbutton"> <br>
			</form>
			<br>
			<h1 id="logincss">비밀번호 찾기</h1>
			<form action="/header/pwsearch" method="post">
				<input type="text" name="id" class="input" id="idchk" placeholder="아이디를 입력해주세요"> 
				<input type="text" name="phone" id="numchk" maxlength='11'class="input" placeholder="전화번호를 입력해주세요"><br>
				<input type="submit" value="확인" class="loginbutton"> <br>
			</form>
		</div>
	</div>
</body>
</html>