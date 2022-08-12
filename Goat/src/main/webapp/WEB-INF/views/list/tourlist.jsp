<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<link rel="stylesheet" href="../../../resources/CSS/list.css?version=1.1" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp" %>
	<div id="content">
		<div id="middle">
			<p id="categorylist">투어</p>
			<hr>
			<table>
				<tr id="tr1">
					<td class="bno"><span></span></td>
					<td class="title"><span>제목</span></td>
					<td class="nick"><span>작성자</span></td>
					<td class="regdate"><span>작성일</span></td>
					<td class="cnt"><span>조회</span></td>
					<td class="good"><span>좋아요</span></td>
				</tr>
				<!--  for문 시작 -->
				<c:forEach items="${tourlist}" var="tourlist">
				<tr>
					<td class="bno">${tourlist.bno}</td>
					<td class="title"><a href="detail/detail?bno=${tourlist.bno}">${tourlist.title}</a></td>
					<td class="nick">${tourlist.nick}</td>
					<td class="regdate">${tourlist.regdate}</td>
					<td class="cnt">${tourlist.cnt}</td>
					<td class="good">${tourlist.good}</td>
				</tr>
				</c:forEach>
				<!--  for문 끝 -->
			</table>
		</div>
		<div id="search">
			<form id="searchform">
				<select class="search" name="period">
					<option value="total">전체기간</option>
					<option value="day">1일</option>
					<option value="week">1주</option>
					<option value="month">1개월</option>
					<option value="total">6개월</option>
					<option value="total">1년</option>
				</select>
				<select class="search" name="condition">
					<option value="conlistre">게시글 + 댓글</option>
					<option value="contitle">제목만</option>
					<option value="conid">글작성자</option>
					<option value="conre">댓글내용</option>
					<option value="conreid">댓글작성자</option>
				</select>
				<input type="text" class="search" id="query" name="query" placeholder="검색어를 입력해주세요">
				<button type="submit" class="search" id="searchbtn">검색</button>
			</form>
		</div>
	</div>
	<%@ include file="../header/footer.jsp" %>
</body>
</html>