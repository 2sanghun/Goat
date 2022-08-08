<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/signup.css" type="text/css">
<script type="text/javascript" src="../../../resources/JS/signup.js"></script>
<script type="text/javascript" src="../../../resources/JS/effective.js"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
		<h1>회원가입</h1>
		<div id="top">
			<span style="color:red;">*</span>은 필수 입력입니다.
		</div>
		<form action="" onsubmit="return jsSubmit();">
		<div id="main">
			<table>
				<tr>
					<td>*</td>
					<td>아이디</td>
					<td><input type="text" id="idchk"><span id="idmsg"></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호</td>
					<td><input type="password" id="pwchk"><span id="pwmsg"></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>비밀번호 재확인</td>
					<td><input type="password" id="rechk"><span id="remsg"></span></td>
				</tr>
				<tr>
					<td>*</td>
					<td>닉네임</td>
					<td><input type="text" id="nickname"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>주소</td>
					<td><input type="text" id="addr"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>전화번호</td>
					<td>
						<select>
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select> -
						<input type="text" class="short" id="numchk1" maxlength='4'> -
						<input type="text" class="short" id="numchk2" maxlength='4'>
						<span id="nummsg"></span>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>E-mail</td>
					<td>
						<input type="text" id="email">
						@
						<select>
							<option>naver.com</option>
							<option>daum.com</option>
							<option>google.com</option>
							<option>google.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>*</td>
					<td>이름</td>
					<td><input type="text" id="name"></td>
				</tr>
				<tr>
					<td>*</td>
					<td>생년월일</td>
					<td>
						<input type="text" class="short" id="bdchk1" maxlength='4' placeholder="4자">년
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<input type="text" class="short" id="bdchk2" maxlength='2'>일
						<span id="bdmsg"></span>
					</td>
				</tr>
			</table>
			<input type="submit" value="가입하기" class="button">
			<a href="../header/login"><input type="button" value="취소" class="button"></a>
		</div>
		</form>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>