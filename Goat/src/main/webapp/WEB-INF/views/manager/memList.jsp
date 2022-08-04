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
	width: 1000px;
	margin: auto;
}

.header {
	height: 100px;
	width: 100%;
}

h1 {
	color: white;
	background-color: teal;
	text-align: center;
	line-height: 100px;
}

.body {
	margin-top: 20px;
	padding-left: 10px;
}

table {
	border-bottom: 1px solid #EAEAEA;
	width: 90%;
	margin: auto;
	padding: 10px;
}
.footer {
	width: 100px;
	margin: auto;
	text-align: center;
}
.back{
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
			<h1>회원 게시물/댓글</h1>
		</div>
		<div class="body">
			<div class="writetable">
				<h4>게시글</h4>
				<table>
					<tr>
						<td>글번호</td>
						<td>제목</td>
						<td>내용</td>
						<td>작성일자</td>
						<td>삭제</td>

					</tr>
				</table>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<hr>
			<br>
			<br>
			<br>
			<div class="repletable">
				<h4>댓글</h4>
				<table>
					<tr>
						<td>글제목</td>
						<td>댓글내용</td>
						<td>작성일자</td>
						<td>삭제</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="footer">
		<a href=""><input class="back" type="button" value="취소"></a>
		</div>
	</div>
</body>
</html>