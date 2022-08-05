<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {
	width: 1000px;
	height: 1050px;
	margin: auto;
	padding : 10px;
	position: relative;
	top: 80px;
	background-image: url("../../../resources/image/travel1.jpg");
	background-color: white;
	background-size : 100% 100%;
}
a { 
	decoration: none;
	text-decoration : none;
	color: black;
}
#top{
	text-align:center;
}
#serch {
	width: 700px;
	height: 40px;
	border-radius: 10px;
}
#canav li{
	display: inline;
	font-weight : bold;
	font-size : 40px;
	padding : 0px 10px 0px 10px;
}
#mid{
	text-align:center;
	position:relative;
	top:100px;
	visibility:hidden;
}
#mid table{
	width:700px;
	margin:auto;
	border-collapse:collapse;
}
#mid tr:nth-child(3n-2) td{
	font-weight:bold;
	font-size:30px;
}
#mid tr:nth-child(3n-1) td{
	border:1px solid black;
}
#mid td:nth-child(1){
	width:100px;
}
#mid td:nth-child(2){
	width:300px;
}
#mid td:nth-child(3){
	width:100px;
}
#mid td:nth-child(4){
	width:100px;
}
#mid td:nth-child(5){
	width:50px;
}
#mid td:nth-child(6){
	width:50px;
}
</style>
<script>
	function onSerch(){
		var mid = document.getElementById('mid')
		mid.style.visibility = "visible";
	}
</script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
		<div id="top">
			<div id="category">
				<ul id="canav">
					<li><a href="">관광</a></li>
					<li><a href="">숙소</a></li>
					<li><a href="">음식</a></li>
					<li><a href="">교통</a></li>
					<li><a href="">투어</a></li>
				</ul>
			</div>
			<input type="text" placeholder="검색" id="serch" name="serch">
			<input type="button" value="검색" onclick="onSerch()">
		</div>
		<!-- 검색 시 나타나며 검색한 내용이 포함된 제목과 내용이 포함된 게시글을 표시 -->
		<div id="mid">
			<table>
				<tr>
					<td colspan="5"><a href="">관광</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">숙소</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">음식</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">교통</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">투어</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
			</table>
		</div>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>