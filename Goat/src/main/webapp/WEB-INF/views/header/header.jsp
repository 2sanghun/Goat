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
	padding: 10px;
	color: white;
	background: teal;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	z-index:1;
	top: 0;
	left: 0;
	right: 0;
}
input{
	background-color : lightteal;
}
header a{
	text-decoration:none;
	color:white;
}

.btn {
	color: teal;
	padding: 8px 10px;
	border: 0.5px solid black;
	background-color: #EAEAEA;
	border-radius: 4px;
}

</style>
</head>
<body>
	<header>
		<h1><a href="../main/main">Goat</a></h1>
		<nav>
			<a href="../main/write"><input type="button" value="글쓰기" class="btn"></a> 
			<a href="../main/main"><input type="button" value="로그아웃" class="btn"></a> 
			<a href="../header/login"><input type="button" value="로그인" class="btn"></a>
			<a href="../header/signup"><input type="button" value="회원가입" class="btn"></a>
		</nav>
	</header>
</body>
</html>