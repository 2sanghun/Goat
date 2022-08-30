<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/JS/effective.js?version=1.2"></script>
<script type="text/javascript" src="../../../resources/JS/mypagesignup.js?version=1.2"></script>
<script type="text/javascript" src="../../../resources/JS/Sing Up.js"></script>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css?version=1.2" type="text/css">
</head>
<body>
	<div id="container">
	<%@ include file="../header/header.jsp"%>
	<form action="/mypage/mypage" method="post" onsubmit="return jsSubmit();">
	<ul id="mypagenav">
		<li><a>내정보</a></li>
		<li><a href="/memModify">내글</a></li>
		<li><a href="/mypage/favorite">회원탈퇴</a></li>
	</ul>

		<hr size="1" color="black">
		<h1>MEMBER INFO</h1>
		<hr size="1" color="black">
		<br> <span>*</span> 표시는 필수 입력 표시입니다.
		<hr size="1" color="black">
		
		<table>
			<tr class="line">
				<td><span>*</span></td>
				<td>ID</td>
				<td><input type="text" readonly name= "id" id="idchk" value = "${member.id}">		
				<span id = "idmsg"></span></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>이름</td>
				<td><input type="text" name="name" value = "${member.name}"></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>비밀번호변경</td>
				<td><input type="password" id = "pwchk" name="password" value = "${member.password}">
				<span id = "pwmsg"></span></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>비밀번호확인</td>
				<td><input type="password" id= "rechk" value = "${member.password}">
				<span id = "remsg"></span></td>
			</tr>
			<tr>
				<td><span></span></td>
				<td>E-mail</td>
				<td><input type="text" name="email" value="${member.email}"></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>주소</td>
				<td><input type="text" class="long" name="addr" value="${member.addr}"></td>
			</tr>
		</table>

		<div id="footer">
			<input type="submit" value="수정" class="backbtn">
			<a href="../main/main"><input type="button" value="취소" class="backbtn"></a>
		</div>
		</form>
	</div>
</body>
</html>