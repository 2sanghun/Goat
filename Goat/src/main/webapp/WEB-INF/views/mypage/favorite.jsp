<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet"
	href="../../../resources/CSS/mypagefavorite.css?version=1.9"
	type="text/css">
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>
		<form action="/mypage/favorite" method="post">

			<h1 class="title">회원탈퇴 페이지</h1>

			<ul id="mypagenav">
				<li><a href="/mypage/mypage">내정보</a></li>
				<li><a href="/memModify">내글</a></li>
				<li><a>회원탈퇴</a></li>
			</ul>
			<table class="pw_table">
				<tr>
					<td colspan="2">계정을 <span class="remove">탈퇴하시려면</span> 비밀번호를
						입력하세요.
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" class="pw_box"></td>
				</tr>
			</table>
			<div class="btn_div">
				<input type="submit" value="탈퇴" class="removebtn"> <a
					href="mypage"><input type="button" value="취소" class="backbtn"></a>
			</div>
		</form>
	</div>
	<%@ include file="../header/footer.jsp"%>

</body>
</html>