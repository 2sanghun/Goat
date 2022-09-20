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
<script type="text/javascript" src="../../../resources/JS/search_check.js"></script>
	
<style>
.loginsession{
	height:370px;
}
label{
	font-weight:bold;
	padding-right:20px;
}
</style>
</head>
<body>
	<div id="container">
		<div class="loginsession" >
			<%@ include file="../header/header.jsp"%>
			<h1 id="logincss">아이디/비밀번호 찾기</h1><br>
			<input type="radio" name="찾기" checked="checked" onclick="search_check(1)">
			<label>아이디 찾기 </label>
			<input type="radio" name="찾기" onclick="search_check(2)">
			<label>비밀번호 찾기</label>
			
			<form action="/header/idsearch" method="post" id="searchId">
				<input type="text" name="name" maxlength='10'class="input" placeholder="이름를 입력해주세요"> 
				<input type="text" name="phone" maxlength='11'class="input" placeholder="전화번호를 입력해주세요">
				<input type="text" name="email" class="input" placeholder="이메일을 입력해주세요"><br>
				<input type="submit" value="확인" class="loginbutton">
			</form>
			<br>
			<form action="/header/pwsearch" method="post" id="searchPw" style="display:none">
				<input type="text" name="id" class="input" id="idchk" placeholder="아이디를 입력해주세요"> 
				<input type="text" name="email" class="input" placeholder="이메일을 입력해주세요"><br>
				<input type="submit" value="확인" class="loginbutton"> 
			</form>
			
		</div>
	</div>
</body>
</html>