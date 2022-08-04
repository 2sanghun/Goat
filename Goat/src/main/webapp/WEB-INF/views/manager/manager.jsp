<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.container {
	width: 100%;
	height: 1000px;
}

.header {
	width: 1000px;
	height: 100px;
	margin: auto;
}

.title {
	width: auto;
	background-color: teal;
	line-height: 100px;
	text-align: center;
	color: white;
}

.body {
	width: 1000px;
	margin: auto;
	background-color: white;
}

table {
	width: 90%;
	margin: auto;
	padding: 10px;
	border-collapse: collapse;
}

.allmem {
	padding: 20px 0px 20px 0px;
	font-size: 18px;
	font-weight: bold;
	border-bottom: none;
}

td {
	margin-top: 5px;
	border-bottom: 1px solid #EAEAEA;
	padding: 20px 0px 20px 0px;

}

.memlist {
	color: gray;
}

.footer {
	width: 100px;
	margin: auto;
	text-align: center;
}

.backbtn {
	color: white;
	padding: 10px 15px;
	margin: 50px 20px 10px 0px;
	border: 0.5px solid black;
	background-color: gray;
}
</style>
</head>
<body>

	<div class="container">
		<div class="header">
			<h1 class="title">회원 관리 페이지</h1>
		</div>
		<div class="body">
			<table>
			<tr>
			<td class="allmem">전체 사용자:</td>
			</tr>
				<tr class="memlist">
					<td>회원번호</td>
					<td>아이디</td>
					<td>닉네임</td>
					<td>가입일</td>
					<td>글/댓글</td>
				</tr>
				<tr>
					<td>10</td>
					<td>aaaa1234</td>
					<td>홍길동</td>
					<td>2022-08-04</td>
					<td>5/1</td>
				</tr>
			</table>
		</div>
		<div class="footer">
			<a href=""><input class="backbtn" type="button" value="취소"></a>
		</div>
	</div>

</body>
</html>