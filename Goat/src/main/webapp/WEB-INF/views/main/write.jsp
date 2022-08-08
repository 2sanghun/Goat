<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/write.css" type="text/css">
</head>
<body>
<div id="container"> 
	<%@ include file="../header/header.jsp" %>
	<div id="top">
		<h1>글 쓰기</h1>
	</div>
	<div id="mid">
		<table>
			<tr>
				<td>카테고리</td>
				<td>
				<div id="select">
					<select>
						<option>관광</option>
						<option>숙소</option>
						<option>음식</option>
						<option>교통</option>
						<option>투어</option>
					</select>
				</div>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text"></td> 
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea></textarea></td>
			</tr>
		</table> 
		<div id="button">
			<input type="submit" value="작성" class="button">
			<input type="button" value="취소" class="button">
		</div>
	</div>
	<div id="bottom">
	</div>
	<%@ include file="../header/footer.jsp" %>
</div>
</body>
</html>