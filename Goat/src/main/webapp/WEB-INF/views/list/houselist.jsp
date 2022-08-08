<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<link rel="stylesheet" href="../../../resources/CSS/list.css" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp" %>
	<div id="content">
		<div id="middle">
			<h1 id="categorylist">전체</h1>
			<hr>
			<table>
				<tr>
					<td class="bno"><span>글번호</span></td>
					<td class="title"><span>제목</span></td>
					<td class="nick"><span>작성자</span></td>
					<td class="regdate"><span>작성일</span></td>
					<td class="cnt"><span>조회</span></td>
					<td class="good"><span>좋아요</span></td>
				</tr>
				<tr>
					<td class="bno">1</td>
					<td class="title">첫번째 글</td>
					<td class="nick">pppp1</td>
					<td class="regdate">2022.08.03</td>
					<td class="cnt">3</td>
					<td class="good">5</td>
				</tr>
				<tr>
					<td class="bno">2</td>
					<td class="title">오늘쓴 글입니다</td>
					<td class="nick">oooo1</td>
					<td class="regdate">오늘 날짜면 작성한 시간만 나오게 하고 싶다 뒤는 제발 잘라줘</td>
					<td class="cnt">1</td>
					<td class="good">0</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../header/footer.jsp" %>

</body>
</html>