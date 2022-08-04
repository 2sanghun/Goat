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
	box-sizing: border-box;
}

.container {
	width: 1000px;
	margin: auto;
}

.header {
	width: 1000px;
	height: 100px;
	margin: auto;
}

.title {
	width: auto;
	background-color: teal;
	line-height: 100px;
	text-align: center;
	color: white;
	text-align: center
}

.body {
	width: 1000px;
}

table {
	width: 100%;
	margin: auto;
	border-collapse: collapse;
}

table, td {
	margin-top: 20px;
	padding: 10px;
	margin: auto;
}

.tdleft, .tdright {
	width: auto;
	padding: 10px;
	border-bottom: 1px solid #EAEAEA;
}
.tdleft{
	text-align: right;

}

.tdright{
	text-align: left;

}

.footer {
	width: 100%;
	margin: auto;
	text-align: center;
}

.cancle, .modify, .ban {
	color: white;
	padding: 10px 15px;
	margin: 10px 20px 10px 0px;
	border: 0.5px solid black;
}

.cancle {
	background-color: gray;
}

.modify {
	background-color: teal;
}

.ban {
	background-color: red;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1 class="title">회원 상세 페이지</h1>
		</div>
		<form>
			<div class="body">
				<table>
					<tr>
						<td class="tdleft">이름:</td>
						<td class="tdright"><input type="text" name="name"></td>
					</tr>

					<tr>
						<td class="tdleft">닉네임:</td>
						<td class="tdright"><input type="text" name="nick"></td>
					</tr>

					<tr>
						<td class="tdleft">아이디:</td>
						<td class="tdright"><input type="text" name="id"></td>
					</tr>

					<tr>
						<td class="tdleft">비밀번호:</td>
						<td class="tdright"><input type="password" readonly></td>
					</tr>

					<tr>
						<td class="tdleft">생년월일:</td>
						<td class="tdright"><input type="text" name="birth_year"
							width="50">년<input type="text" name="birth_month"
							width="50">월<input type="text" name="birth_day"
							width="50">일</td>
					</tr>

					<tr>
						<td class="tdleft">가입일자:</td>
						<td class="tdright"><input type="text" readonly></td>
					</tr>

					<tr>
						<td class="tdleft">이메일:</td>
						<td class="tdright"><input type="text" name="email">@
							<select></select></td>
					</tr>

					<tr>
						<td class="tdleft">휴대폰번호:</td>
						<td class="tdright"><input type="text" name="phone">- 
					        	           <input type="text" name="phone">-
							               <input type="text" name="phone"></td>
					</tr>

					<tr>
						<td class="tdleft">주소:</td>
						<td class="tdline"><input type="text" name="addr"></td>
					</tr>

				</table>
			</div>
			<div class="footer">
				<input class="cancle" type="submit" value="취소" formaction="">
				<input class="modify" type="submit" value="수정" formaction="">
				<input class="ban" type="submit" value="강퇴" formaction="">
			</div>
		</form>
	</div>
</body>
</html>