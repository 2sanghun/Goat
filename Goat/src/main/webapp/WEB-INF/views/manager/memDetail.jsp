<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/memDetailCSS.css?version=1.6">
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/scrollToTop.js?version=1.3"></script>

<script type="text/javascript">
	function delchk() {
		return confirm("탈퇴하시겠습니까?");
	}
</script>
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

				<a href="#" class="scrollToTop"></a>

			</div>
			<div class="footer">
				<input class="cancle" type="submit" value="닫기" formaction="manager">
				<a href="/manager/remove?id=${detail.id}"><input
					onclick="return delchk();" class="ban" type="button" value="탈퇴"></a>
			</div>
		</form>
				<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>