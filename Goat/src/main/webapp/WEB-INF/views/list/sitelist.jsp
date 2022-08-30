<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sitelist</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/JS/list.js"></script>
<link rel="stylesheet" href="../../../resources/CSS/list.css?version=1.1" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp" %>
	<div id="content">
		<div id="middle">
			<p id="categorylist">관광</p>
			<hr id="categoryhr">
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
				<c:forEach items="${sitelist}" var="sitelist">
				<tr>
					<td class="bno">${sitelist.bno}</td>
					<td class="title"><a href="../detail/detail?bno=${sitelist.bno}">${sitelist.title}</a></td>
					<td class="nick">${sitelist.nick}</td>
					<td class="regdate">${sitelist.regdate}</td>
					<td class="cnt">${sitelist.cnt}</td>
					<td class="good">${sitelist.good}</td>
				</tr>
				</c:forEach>
				<!--  for문 끝 -->
			</table>
		</div>
		<div id="search">
			<div id="pagingArea">
				<!-- prev(이전)이 true이면 이전버튼 활성화 -->
				<c:if test="${paging.prev}">
					<a href="/list/sitelist?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
				</c:if>
		
				<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
					<a href="/list/sitelist?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
				</c:forEach>
				
				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<a href="/list/sitelist?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
				</c:if>
			</div>
			<hr id="paginghr">
			<form action="/list/sitelist" method="get" id="searchform">
				<select class="search" name="period">
					<option value="total">전체기간</option>
					<option value="day">1일</option>
					<option value="week">1주</option>
					<option value="month">1개월</option>
					<option value="sixMonth">6개월</option>
					<option value="year">1년</option>
				</select>
				<select class="search" name="type">
					<option value="T">제목 </option>
					<option value="N">글작성자</option>
					<option value="TC">제목+게시글</option>
				</select>
				<input type="text" class="search" id="query" name="keyword" placeholder="검색어를 입력해주세요">
				<button type="button" class="search" id="searchbtn">검색</button>
				<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
				<input type="hidden" name="amount" value="${paging.cri.amount}">
			</form>
		</div>
	</div>
	<%@ include file="../header/footer.jsp" %>
</body>
</html>