<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
							<td class="tdright">${detail.name}</td>
						</tr>

						<tr>
							<td class="tdleft">닉네임</td>
							<td class="tdright">${detail.nick}</td>
						</tr>

						<tr>
							<td class="tdleft">아이디</td>
							<td class="tdright">${detail.id}</td>
						</tr>

						<tr>
							<td class="tdleft">비밀번호</td>
							<td class="tdright">${detail.password}</td>
						</tr>

						<tr>
							<td class="tdleft">생년월일</td>
							<td class="tdright">${detail.birth}</td>
						</tr>

						<tr>
							<td class="tdleft">가입일자</td>
							<td class="tdright">${detail.memdate}</td>
						</tr>

						<tr>
							<td class="tdleft">이메일</td>
							<td class="tdright">${detail.email}</td>
						</tr>

						<tr>
							<td class="tdleft">휴대폰번호</td>
							<td class="tdright">${detail.phone}</td>
						</tr>

						<tr>
							<td class="tdleft">주소</td>
							<td class="tdright">${detail.addr}</td>
						</tr>

					</table>
			</div>
			<div class="footer">
				<input class="cancle" type="submit" value="닫기" formaction="manager" >
				<input class="ban" type="submit" value="탈퇴" formaction="/manager/remove?id=${boardlist.id}">
			</div>
		</form>
	</div>
</body>
</html>