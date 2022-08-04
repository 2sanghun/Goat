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
</style>
</head>
<body>
	<header>
		<h1>Goat</h1>
		<nav>
			<a href="write"><input type="button" value="글쓰기"></a> <a
				href="main"><input type="button" value="로그아웃"></a> <a
				href="../header/login"><input type="button" value="로그인"></a>
			<a href="../header/signup"><input type="button" value="회원가입"></a>
		</nav>
	</header>
</body>
</html>