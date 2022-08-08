<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/login.css" type="text/css">
<script type="text/javascript" src="../../../resources/JS/effective.js"></script>
</head>
<body>
	<div id="container">
	<%@ include file="../header/header.jsp" %>
		<h1>로그인</h1>
		<form action="">
			<input type="text" name="id" class="input" id="idchk" placeholder="ID"><br>
			<span id="idmsg"></span><br>
			<input type="password" name="pw" class="input" id="pwchk" placeholder="PASSWORD"><br> 
			<span id="pwmsg"></span><br>
			<input type="submit" value="로그인" class="button"> 
			<a href="../header/signup"><input type="button" value="회원가입" class="button"></a>
		</form>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>