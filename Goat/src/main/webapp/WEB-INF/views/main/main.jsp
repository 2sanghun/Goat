<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/main.css" type="text/css">
<script type="text/javascript" src="../../../resources/JS/main.js"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
			<div id="background">
		<div id="top">
		<br><br><br><br><br><br><br>
			<input type="text" placeholder="검색" id="serch" name="serch">
			<input type="button" value="검색" onclick="onSerch()" class="btn">
		</div>
		
		<!-- 검색 시 나타나며 검색한 내용이 포함된 제목과 내용이 포함된 게시글을 표시 -->
		<div id="mid">
			<table>
				<tr>
					<td colspan="5"><a href="">관광</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">숙소</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">음식</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">교통</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td colspan="5"><a href="">투어</a></td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
			</table>
		</div>
		</div>
		<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>