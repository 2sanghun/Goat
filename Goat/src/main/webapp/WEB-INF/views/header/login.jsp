<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	background-image: url("../../../resources/image/travel1.jpg");
	background-color: white;
	background-size : 100% 100%;
}

.input {
	width:300px;
	height: 25px;
}
.button {
	background-color: #6799FF;
	padding: 10px 40px 10px 40px;
	color:white;
}
</style>
</head>
<body>
	<div id="container">
	<%@ include file="../header/header.jsp" %>
		<h1>로그인</h1>
		<form action="BoardLogin.jsp">
			<input type="text" name="id" class="input" id="idchk" placeholder="ID"><br>
			<span id="idmsg"></span><br>
			<input type="password" name="pw" class="input" id="pschk" placeholder="PASSWORD"><br> 
			<span id="psmsg"></span><br>
			<input type="submit" value="로그인" class="button"> 
			<a href="BoardMem.jsp"><input type="button" value="회원가입" class="button"></a>
		</form>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>