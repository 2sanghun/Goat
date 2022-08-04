<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--주석-->
<style>
#container {
	width: 1000px;
	height: 1050px;
	margin: auto;
	padding : 10px;
	position: relative;
	top: 90px;
	background-image: url("../../../resources/image/travel1.jpg");
	background-color: white;
	background-size : 100% 100%;
}
a {
	decoration: none;
}
#top{
	text-align:center;
}
#serch {
	width: 700px;
	height: 40px;
}
#canav li{
	display: inline;
	font-weight : bold;
	font-size : 40px;
	padding : 0px 10px 0px 10px;
}
</style>

</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
		<div id="top">
			<div id="category">
				<ul id="canav">
					<li>관광</li>
					<li>숙소</li>
					<li>음식</li>
					<li>교통</li>
					<li>투어</li>
				</ul>
			</div>
			<input type="text" placeholder="검색" id="serch" name="serch">
			<a href="">검색</a>
		</div>
		<div id="mid"></div>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>