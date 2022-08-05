<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header {
	background-color:white;
	height: 75px;
	width:99%;
	margin:auto;
	padding: 10px;
	color: teal;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	z-index:1;
	top: 0;
	right:0;
}
img{
	width:150px;
	height:70px;
}
input{
	background-color : lightteal;
}
header a{
	text-decoration:none;
}
.btn{
	color:teal;
	padding: 8px 10px;
	border: 0.5px solid black;
	background-color:#EAEAEA;
	border-radius:4px;
}

#category{
	visibility: visible;
}
#canav li{
	display: inline;
	font-weight : bold;
	font-size : 30px;
	padding : 0px 10px 0px 10px;
}
</style>

</head>
<body>
	<header>
		<h1><a href="../main/main"><img src="../../../resources/image/logo.jpg"></a></h1>
		<div id="category">
				<ul id="canav">
					<li><a href="">관광</a></li>
					<li><a href="">숙소</a></li>
					<li><a href="">음식</a></li>
					<li><a href="">교통</a></li>
					<li><a href="">투어</a></li>
				</ul>
			</div>
		<nav>
			<a href="../main/write"><input type="button" value="글쓰기" class="btn"></a> 
			<a href="../main/main"><input type="button" value="로그아웃" class="btn"></a> 
			<a href="../header/login"><input type="button" value="로그인" class="btn"></a>
			<a href="../header/signup"><input type="button" value="회원가입" class="btn"></a>
		</nav>
	</header>
</body>
<script>
	const windowWidth = window.innerWidth;
	var cate =document.getElementById("category");
	if(windowWidth<=1000){
		cate.style.visibility='hidden'; 
	}else{
		cate.style.visibility='visible';
	}
	function hidden(){
		const windowWidth = window.innerWidth;
		var cate =document.getElementById("category");
		if(windowWidth<=1000){
			cate.style.visibility='hidden';
		}else{
			cate.style.visibility='visible';
		}
	}
	window.addEventListener('resize', hidden);
</script>
</html>