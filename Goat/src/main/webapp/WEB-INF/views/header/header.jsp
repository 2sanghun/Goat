<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/header.css?version=1.2" type="text/css">
<script type="text/javascript" src="../../../resources/JS/header.js"></script>
</head>
<body>
	<header>
		<h1><a href="../main/main"><img src="../../../resources/image/logo.jpg"></a></h1>
		<div id="category"> 
				<ul id="canav">
					<li><a href="../list/list">전체</a></li>
					<li><a href="../list/list?category=관광">관광</a></li>
					<li><a href="../list/houselist?category=숙소">숙소</a></li>
					<li><a href="../list/foodlist?category=음식">음식</a></li>
					<li><a href="../list/translist?category=교통">교통</a></li>
					<li><a href="../list/tourlist?category=투어">투어</a></li>
				</ul>
			</div>
		<nav>
		<% 
		String id = (String) session.getAttribute("id");
		if(id==null){%>
			<a href="../header/login"><input type="button" value="로그인" class="headerbtn"></a>
			<a href="../header/signup"><input type="button" value="회원가입" class="headerbtn"></a>
		<% }else{%>
			<a href="../main/write"><input type="button" value="글쓰기" class="headerbtn"></a> 
			<a href="../header/logout"><input type="button" value="로그아웃" class="headerbtn"></a> 
			<%if(id.equals("manager")){ %>  <!-- 아이디가 manager(관리자)일 경우 마이페이지 대신 관리자 버튼 -->
				<a href="../manager/manager"><input type="button" value="관리자" class="headerbtn"></a>
			<%}else{%>
				<a href="../mypage/mypage"><input type="button" value="마이페이지" class="headerbtn"></a>
			<%}
		}%>
		</nav>
	</header>
</body>
<script>

</script>
</html>