<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/main.css?version=1.1" type="text/css">
<script type="text/javascript" src="../../../resources/JS/main.js?version=1.2"></script>
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp" %>
		<div id="background">
		<div id="top">
		<br><br><br><br><br><br><br>
		<form action="/main/main" method="post">
			<input type="text" placeholder="검색" id="search" name="search">
			<input type="submit" value="검색" class="btn">
		</form>
		</div>
		<!-- 검색 시 나타나며 검색한 내용이 포함된 제목과 내용이 포함된 게시글을 표시 -->
		<div id="mid">
			<table>
			<c:forEach items="${search}" var="searchlist">
				<tr>
					<td colspan="6">${searchlist.category}</td>
				</tr>
				<tr>
					<td></td>
					<td>제목</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>좋아요</td>
				</tr>
				<tr>
					<td>${searchlist.bno}</td>
					<td><a href="/detail/detail?bno=${searchlist.bno}">${searchlist.title}</a></td>
					<td>${searchlist.regdate}</td>
					<td>${searchlist.nick}</td>
					<td>${searchlist.cnt}</td>
					<td>${searchlist.good}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		</div>
	<%@ include file="../header/footer.jsp" %>
	</div>
</body>
</html>