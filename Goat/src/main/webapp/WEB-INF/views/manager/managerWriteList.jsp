<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/managerWriteListCSS.css">

</head>
<body>
	<div class="container">
		<%@ include file="../header/header.jsp"%>
		<div class="header">
			<h1 class="title">회원 게시물/댓글</h1>
		</div>
		<div class="body">
			<table class="writetable">
				<tr>
					<td class="subtitle">게시글 목록</td>
				</tr>
				<tr class="writetitle">
					<td class="write1">글번호</td>
					<td class="write2">제목</td>
					<td class="write3">내용</td>
					<td class="write2">작성일자</td>
					<td class="write1">삭제</td>
				</tr>
				<tr class="writelist">
					<td>1</td>
					<td>가나다</td>
					<td>한글입니다</td>
					<td>2022-08-05</td>
					<td><a href=""><input type="button" value="상세"
							class="modifybtn"></a></td>
				</tr>
			</table>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>
		<div class="body">
			<table class="writetable">
				<tr>
					<td class="subtitle">댓글 목록</td>
				</tr>
				<tr class="writetitle">
					<td class="write2">글제목</td>
					<td class="write3">댓글내용</td>
					<td class="write2">작성일자</td>
					<td class="write1">삭제</td>
				</tr>
				<tr class="writelist">
					<td>한글입니다.</td>
					<td>댓글입니다.</td>
					<td>2022-08-05</td>
					<td><a href=""><input type="button" value="상세"
							class="modifybtn"></a></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="footer">
		<a href="manager"><input class="back" type="button" value="취소"></a>
	</div>
	</div>
</body>
</html>