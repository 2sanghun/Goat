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
table{
	width:700px;
	margin:auto;
}
td:nth-child(1){
	text-align: center;
}
td:nth-child(2){
	width:600px;
}
#mid td input{
	width:600px;
}
#mid textarea{
	height: 500px;
	width:600px;
}
#select{
	text-align:right;
}
#mid{
	text-align:center;
}
</style>
</head>
<body>
<div id="container">
	<header>
		<h1>Goat</h1>
		<nav>
			<a href="../main/main"><input type="button" value="로그아웃"></a>
			<a href="../header/login"><input type="button" value="로그인"></a>
			<a href="../header/signup"><input type="button" value="회원가입"></a>
		</nav>
	</header>
	<div id="top">
		<h1>글 쓰기</h1>
	</div>
	<div id="mid">
		<table>
			<tr>
				<td>카테고리</td>
				<td>
				<div id="select">
					<select>
						<option>관광</option>
						<option>숙소</option>
						<option>음식</option>
						<option>교통</option>
						<option>투어</option>
					</select>
				</div>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea></textarea></td>
			</tr>
		</table>
		<input type="submit" value="작성">
		<input type="button" value="취소">
	</div>
	<div id="bottom">
	</div>
</div>
</body>
</html>