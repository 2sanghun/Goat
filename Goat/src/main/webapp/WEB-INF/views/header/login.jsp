<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="google-signin-client_id" content="1060483348379-lhrt8j3q10mi8irutv532l8497oggsur.apps.googleusercontent.com">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/login.css?version=1.1" type="text/css">
<script type="text/javascript" src="../../../resources/JS/effective.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>
		<h1>로그인</h1>
		<form action="/header/login" method="post">
			<input type="text" name="id" class="input" id="idchk" placeholder="ID"><br> 
			<span id="idmsg"></span><br>
			<input type="password" name="password" class="input" id="pwchk" placeholder="PASSWORD"><br> 
			<span id="pwmsg"></span><br>
			<input type="submit" value="로그인" class="button"> 
			<a href="../header/signup">
			<input type="button" value="회원가입" class="button"></a>
		</form>


		<!-- 아래와같이 아이디를 꼭 써준다. -->
		<a id="naverIdLogin_loginButton" href="javascript: testPopUp(0)"> 
		<img src="../../../resources/image/naverlogin.png" class="apibutton">
		</a>
		<!-- 네이버 스크립트 -->
		<script
			src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
			charset="utf-8"></script>
		<br>
		
		<!-- 카카오톡  -->
		 <a href="javascript:kakaoLogin();">
			<img src="../../../resources/image/kakaotalklogin.png" class="apibutton">
    	 </a>
    	 <!-- 카카오 스크립트 -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<br>
 		
 		<!-- API관련 JS연결 -->
		<script type="text/javascript" src="../../../resources/JS/login.js"></script>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>