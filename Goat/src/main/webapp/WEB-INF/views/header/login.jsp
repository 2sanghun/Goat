<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-client_id"
	content="1060483348379-lhrt8j3q10mi8irutv532l8497oggsur.apps.googleusercontent.com">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/login.css?version=1.4" type="text/css">
<script type="text/javascript" src="../../../resources/JS/effective.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<div id="container">
		<div class="loginsession">
			<%@ include file="../header/header.jsp"%>
			<h1 id="logincss">로그인</h1>
			<form action="/header/login" method="post">
				<input type="text" name="id" class="input" id="idchk"
					placeholder="아이디를 입력해주세요"> <input type="password"
					name="password" class="input" id="pwchk" placeholder="비밀번호를 입력해주세요"><br>
				<a href="../header/signup" class="signupbutton">회원가입</a> <br>
				 <input type="submit" value="로그인" class="loginbutton"> <br>
			</form>

			<p>SNS 로그인</p>

			<!-- 아래와같이 아이디를 꼭 써준다. -->
			<a id="naverIdLogin_loginButton" href="javascript: testPopUp(0)">
				<img src="../../../resources/image/naverlogin.png" class="apibutton">
			</a>
			<!-- 네이버 스크립트 -->
			<script
				src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
				charset="utf-8"></script>
		

			<!-- 카카오톡  -->
			<a href="javascript:kakaoLogin();"> <img
				src="../../../resources/image/kakaotalklogin.png" class="apibutton">
			</a>
			<!-- 카카오 스크립트 -->
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<br>
		</div>
	</div>
	<!-- API관련 JS연결 -->
			<script type="text/javascript" src="../../../resources/JS/login.js"></script>
			<%@ include file="../header/footer.jsp"%>
</body>
</html>