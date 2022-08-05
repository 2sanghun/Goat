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
	height: 100px;
	width: 100%;
}

.title {
	margin-top: 100px;
	color: teal;
	background-color: white;
	text-align: left;
	line-height: 100px;
}

.body {
	margin-top: 20px;
	padding-left: 10px;
}

table {
	width: 100%;
	margin: auto;
	padding: 10px;
}

h4 {
	font-size: 18px;
	font-weight: bold;
}

.writetitle {
	font-weight: bold;
	color: gray;
}

td {
	border-bottom: 1px solid #EAEAEA;
	padding: 10px 0px 10px 0px;
}

.footer {
	width: 100px;
	margin: auto;
	text-align: center;
}

.back {
	color: white;
	padding: 10px 15px;
	margin: 50px 20px 10px 0px;
	border: 0.5px solid black;
	background-color: gray;
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
			<h1 class="title">회원 게시물/댓글</h1>
		</div>
		<div class="body">
			<div class="writetable">
				<h4>게시글 목록</h4>
				<table>
					<tr class="writetitle">
						<td>글번호</td>
						<td>제목</td>
						<td>내용</td>
						<td>작성일자</td>
						<td>삭제</td>
					</tr>
					<tr>
						<td>1</td>
						<td>가나다</td>
						<td>한글입니다</td>
						<td>2022-08-05</td>
						<td><a href=""><input type="button" value="상세"
								class="modifybtn"></a></td>
					</tr>
				</table>
			</div>
			<br> <br> <br> <br> <br> <br>
			<hr>
			<br> <br> <br>
			<div class="repletable">
				<h4>댓글 목록</h4>
				<table>
					<tr class="writetitle">
						<td>글제목</td>
						<td>댓글내용</td>
						<td>작성일자</td>
						<td>삭제</td>
					</tr>
					<tr>
						<td>한글입니다.</td>
						<td>댓글입니다.</td>
						<td>2022-08-05</td>
						<td><a href=""><input type="button" value="상세"
								class="modifybtn"></a></td>
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