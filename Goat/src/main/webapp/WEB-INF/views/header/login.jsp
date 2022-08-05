<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../../resources/JS/effective.js"></script>
<style>
header {
	height: 75px;
	width:1000px;
	margin:auto;
	padding: 1rem;
	color: white;
	background: teal;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
}
#container {
	width: 1000px;
	height: 1050px;
	margin: auto;
	padding : 10px;
	position: relative;
	text-align:center;
	top: 90px;
}

.input {
	width:300px;
	height: 25px;
}
.button {
	background-color: teal;
	padding: 10px 40px 10px 40px;
	color:white;
	border:none;
}
</style>
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