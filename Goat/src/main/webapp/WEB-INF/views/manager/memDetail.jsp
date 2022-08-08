<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/memDetailCSS.css">
</head>
<body>
	<div class="container">
		<%@ include file="../header/header.jsp"%>
		<div class="header">
			<h1 class="title">회원 상세 페이지</h1>
		</div>
		<form>
			<div class="body">
				<table>
					<tr>
						<td class="tdleft">이름</td>
						<td class="tdright"><input type="text" name="name"></td>
					</tr>

					<tr>
						<td class="tdleft">닉네임</td>
						<td class="tdright"><input type="text" name="nick"></td>
					</tr>

					<tr>
						<td class="tdleft">아이디</td>
						<td class="tdright"><input type="text" name="id" readonly></td>
					</tr>

					<tr>
						<td class="tdleft">비밀번호</td>
						<td class="tdright"><input type="password" readonly></td>
					</tr>

					<tr>
						<td class="tdleft">생년월일</td>
						<td class="tdright"><input type="text" name="birth_year"
							class="short" readonly>년 <input type="text"
							name="birth_month" class="short" readonly>월 <input
							type="text" name="birth_day" class="short" readonly>일</td>
					</tr>

					<tr>
						<td class="tdleft">가입일자</td>
						<td class="tdright"><input type="text" readonly></td>
					</tr>

					<tr>
						<td class="tdleft">이메일</td>
						<td class="tdright"><input type="text" name="email">@
							<select>
								<option>gmail.com</option>
								<option>naver.com</option>
								<option>daum.com</option>
						</select></td>
					</tr>

					<tr>
						<td class="tdleft">휴대폰번호</td>
						<td class="tdright"><select>
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
						</select> - <input type="text" name="phone" class="short"> - <input
							type="text" name="phone" class="short"></td>
					</tr>

					<tr>
						<td class="tdleft">주소</td>
						<td class="tdright"><input type="text" name="addr"> <input
							class="postnum" type="button" value="우편번호"><br> <input
							type="text" name="addr" placeholder="지번주소"><br> <input
							type="text" name="addr" placeholder="상세주소"><br> <input
							type="text" name="addr" placeholder="도로명주소"><br> <input
							type="text" name="addr" placeholder="상세주소"></td>
					</tr>

				</table>
			</div>
			<div class="footer">
				<input class="cancle" type="submit" value="닫기" formaction="manager">
				<input class="ban" type="submit" value="탈퇴" formaction="">				
			</div>
			
		</form>
	</div>
</body>
</html>