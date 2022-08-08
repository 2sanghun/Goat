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
}

.container {
	width: 1000px;
	margin: auto;
}

.header {
	width: 1000px;
	height: 100px;
	margin: auto;
}

.title {
	margin-top: 100px;
	width: auto;
	background-color: white;
	line-height: 100px;
	text-align: left;
	color: teal;
}

.body {
	width: 1000px;
	margin: auto;
	background-color: white;
}

.writetable {
	width: 100%;
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
	font-weight: bold;
}

.footer {
	width: 1000px;
	margin: auto;
	text-align: center;
}

.btntable {
	width: 90%;
	margin: auto;
	padding: 10px;
	border-collapse: collapse;
}

.backbtn {
	color: white;
	padding: 10px 15px;
	margin: 50px 20px 10px 0px;
	border: 0.5px solid black;
	background-color: teal;
	border-radius: 4px;
}

.modifybtn {
	background-color: white;
	border: 0.5px solid gray;
	padding: 5px 5px;
	border-radius: 4px;
	color: gray;
}
</style>
</head>
<body>

	<div class="container">
		<%@ include file="../header/header.jsp"%>

		<div class="header">
			<h1 class="title">회원 관리 페이지</h1>
		</div>
		<div class="body">
			<table class="writetable">
				<tr>
					<td class="allmem">전체 사용자: 1  명</td>
				</tr>
				<tr class="memlist">
					<td>회원번호</td>
					<td>아이디</td>
					<td>닉네임</td>
					<td>가입일</td>
					<td>글/댓글</td>
					<td>관리</td>
				</tr>
				<tr>
					<td>7</td>
					<td>abcd1234</td>
					<td>홍길동</td>
					<td>2022-08-05</td>
					<td><a href="">5/1</a></td>
					<td><a href=""><input type="button" value="상세"
							class="modifybtn"></a></td>
				</tr>
			</table>
		</div>
		<div class="footer">
			<table class="btntable">
				<tr>
					<td><a href=""><input class="backbtn" type="button"
							value="이전"></a> <a href=""><input class="backbtn"
							type="button" value="다음"></a></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>