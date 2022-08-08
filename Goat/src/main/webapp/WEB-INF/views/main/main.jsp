<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#container {
	width: 100%;
	height: 1050px;
	margin: auto;
	padding : 10px;
	position: relative;
	top: 80px;
	left:-20px;
	
}
#background{
	width:100%;
	height:100%;
	margin:auto;
	padding:10px;
	position:relative;
	top:-20px;
	background-image: url("../../../resources/image/travel2.jpg");
	background-color: white;
	background-repeat: no-repeat;
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

#mid{
	text-align:center;
	position:relative;
	top:100px;
	visibility:hidden;
	background-color: rgba(255,255,255,0.5);
	width:900px;
	border-radius:10px;
	margin:auto;
	padding:30px 0px 30px 0px;
	
}

#mid table{
	width:700px;
	margin:auto;
	border-collapse:collapse;
	background-color:transparent;
	
	
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
	window.onload = function imageCh(){
		var random=Math.floor(Math.random()*14)+1;
		function ran(a){
			return "url('../../../resources/image/travel"+a+".jpg')"
		}
		document.getElementById("background").style.backgroundImage=ran(random);
	}
</script>
</head>
<body>
	 
	<div id="container">
		<%@ include file="../header/header.jsp" %>
			<div id="background">
		<div id="top">
		<br><br><br><br><br><br><br>
			<input type="text" placeholder="검색" id="serch" name="serch">
			<input type="button" value="검색" onclick="onSerch()" class="btn">
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
		</div>
		
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>