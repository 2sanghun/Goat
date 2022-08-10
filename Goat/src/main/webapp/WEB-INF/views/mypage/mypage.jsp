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
<script type="text/javascript" src="../../../resources/JS/Sing Up.js"></script>

<style>
#container {
	widht: 50px;
	position: relative;
	top: 100px;
}

td:nth-child(1) {
	width: 20px;
	text-align: right;
}

td:nth-child(2) {
	width: 100px;
	text-align: justify;
	padding: 20px;
}

#footer {
	text-align: center;
	margin-top: 20px;
}

.long {
	width: 300px;
}

.short {
	width: 100px;
}

table {
	border-collapse: collapse;
	width: 100%;
}

tr {
	border-bottom: 1px solid black
}

#mypagenav {
	height: 20px;
	padding: 1rem;
	background-color: green;
	list-style-type: none;
	margin:;
	padding:;
	overflow: hidden;
	font-weight: bold;
	display: flex;
	align-items: center;
	padding-top: 10px;
	padding-bottom: 10px;
	margin-top: 20px;
	word-spacing: 10px;
	
}

li {
	float: left;
}

#mypagenav li a {
	display: block;
	background-color: green;
	color: #000000;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a:hover {
	background-color: teal;
	color: white;
}

h1 {
	text-align: center;
	text-shadow: 2px 2px 2px gray;
}
</style>
</head>
<body>
${my}
	<div id="container">
	<%@ include file="../header/header.jsp"%>
	<form action="/mypage/mypage" method="post">
	<ul id="mypagenav">
		<li><a>내정보</a></li>
		<li><a href="memModify">내글</a></li>
		<li><a href="favorite">회원탈퇴</a></li>
	</ul>

		<hr size="1" color="black">
		<h1>MEMBER INFO</h1>
		<hr size="1" color="black">
		<br> <span>*</span> 표시는 필수 입력 표시입니다.
		<hr size="1" color="black">
		<c:forEach items="${my}" var="memberlist">
		<tr>
		      <td>${memberlist.id}</td>
		      <td>${memberlist.name}</td>
		      <td>${memberlist.password}</td>
		      <td>${memberlist.email}</td>
		      <td>${memberlist.addr}</td>
		</tr>
		</c:forEach>	
		<table>
			<tr class="line">
				<td><span>*</span></td>
				<td>ID</td>
				<td><input type="text" readonly name= "ID" value = "${detail.id}">		
				</td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>비밀번호</td>
				<td><input type="password" id = "pwchk" name="password">
				<span id = "pwmsg"></span></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>비밀번호확인</td>
				<td><input type="password" id= "rechk" name="password">
				<span id = "remsg"></span></td>
			</tr>
			<tr>
				<td><span></span></td>
				<td>E-mail</td>
				<td><input type="text" name="email1"> @ <input
					type="text" name="email2" class="short"> <select
					name="select_email" onChange="selectEmail(this)">
						<option value="" selected>선택하세요</option>
						<option value="1">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="empas.com">empas.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="freechal.com">freechal.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="korea.com">korea.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="paran.com">paran.com</option>
				</select></td>
			</tr>
			<tr>
				<td><span>*</span></td>
				<td>주소</td>
				<td><input type="text" class="long" name="addr"></td>
			</tr>
		</table>

		<div id="footer">
			<input type="submit" value="수정" formaction ="member/modify">
			<a href="../main/main"><input type="button" value="취소"></a>
		</div>
		</form>
	</div>
</body>
</html>