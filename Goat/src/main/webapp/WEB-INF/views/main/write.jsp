<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../../../resources/CSS/write.css"
	type="text/css">
<script type="text/javascript" src="../../../resources/JS/uploadAjax.js"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>
		<form action="/main/write" id="form" method="post">
			<div id="top">
				<h1 id="writecss">글 쓰기</h1>
			</div>
			<div id="mid">
				<table>
					<tr>
						<td>카테고리</td>
						<td>
							<div id="select">
								<select name="category">
									<option value="관광">관광</option>
									<option value="숙소">숙소</option>
									<option value="음식">음식</option>
									<option value="교통">교통</option>
									<option value="투어">투어</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" id="uploadResult"></textarea></td>
					</tr>
				</table>
				<div>
					<input type="file" name="uploadFile" multiple>
				</div>
				<div id="button">
					<input type="button" id="uploadBtn" value="작성" class="button">
					<a href="/main"><input type="button" value="취소" class="button"></a>
				</div>
			</div>
			<div id="bottom"></div>
		</form>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>