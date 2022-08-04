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
	text-align:center;
	position: relative;
	top: 90px;
	background-image: url("../../../resources/image/travel1.jpg");
	background-color: white;
	background-size : 100% 100%;
}



.input {
	width: 300px;
	height: 25px;
}

.button {
	background-color: #6799FF;
	padding: 10px 40px 10px 40px;
	color: white;
}

</style>
</head>
<body>
	<div id="container">
		<header>
			<h1>Goat</h1>
			<nav>
				<a href="write"><input type="button" value="글쓰기"></a> 
				<a href="main"><input type="button" value="로그아웃"></a>
				<a href="../header/login"><input type="button" value="로그인"></a>
				<a href="../header/signup"><input type="button" value="회원가입"></a>
			</nav>
		</header>
		<div id="top">
			<h1>회원가입</h1>
		</div>
		<div id="main">
			<table>
				<tr>
					<td>*</td>
					<td>아이디</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호</td>
					<td><input type="password"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호 재확인</td>
					<td><input type="password"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>닉네임</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>주소</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>전화번호</td>
					<td>
						<input type="text">
						<input type="text">
						<input type="text">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>E-mail</td>
					<td>
						<input type="text">
						@
						<select>
							<option>naver.com</option>
							<option>daum.com</option>
							<option>google.com</option>
							<option>google.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>*</td>
					<td>이름</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>생년월일</td>
					<td>
						<input type="text">년
						<input type="text">월
						<input type="text">일
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>