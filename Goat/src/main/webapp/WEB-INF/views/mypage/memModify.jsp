<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/JS/mypagelist.js"></script>
<link rel="stylesheet" href="../../../resources/CSS/mypagelist.css?version=1.9" type="text/css">
<link rel="stylesheet" href="../../../resources/CSS/mypagemodify.css?version=1.9" type="text/css">
<link rel="stylesheet" href="../../../resources/CSS/mypagefavorite.css?version=1.9" type="text/css">
</head>
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>


		<ul id="mypagenav">
			<li><a href="mypage">내정보</a></li>
			<li><a>내글</a></li>
			<li><a href="favorite">회원탈퇴</a></li>
		</ul>

		<hr size="1" color="black">
		<h1>MEMBER INFO</h1>
		<hr size="1" color="black">
		<br> <br> <span>*</span> 내 게시글 관리 <br> <br> <span>*</span>
		글 수정시 전체 목록으로 이동
		<div id="content">
			<div id="middle">
				<table>
					<tr id="tr1">
						<td class="bno"></td>
						<td class="title">제목</td>
						<td class="nick">카테고리</td>
						<td class="regdate">작성일</td>
						<td class="cnt">조회</td>
						<td class="good">좋아요</td>
					</tr>
					<!--  for문 시작 -->
					<c:forEach items="${myboard}" var="myboard">
						<tr>
							<td class="bno">${myboard.bno}</td>
							<td class="title"><a
								href="../detail/detail?bno=${myboard.bno}">${myboard.title}</a></td>
							<td class="nick">${myboard.category}</td>
							<td class="regdate">${myboard.regdate}</td>
							<td class="cnt">${myboard.cnt}</td>
							<td class="good">${myboard.good}</td>
						</tr>
					</c:forEach>
					<!--  for문 끝 -->
				</table>
			</div>
            <h4>
			<!-- prev(이전)이 true이면 이전버튼 활성화 -->
			<c:if test="${paging.prev}">
				<a href="/memModify?type=${paging.cri.type}
             &keyword=${paging.cri.keyword}&pageNum=${paging.startpage-1}&amount=${paging.cri.amount}">이전</a>
			</c:if>

			<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
			<c:forEach begin="${paging.startpage}" end="${paging.endpage}"
				var="num">
				<a href="/memModify?type=${paging.cri.type}
              &keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
			</c:forEach>

			<!-- next(다음)이 true이면 다음버튼 활성화 -->
			<c:if test="${paging.next}">
				<a href="/memModify?type=${paging.cri.type}
              &keyword=${paging.cri.keyword}&pageNum=${paging.endpage+1}&amount=${paging.cri.amount}">다음</a>
			</c:if>
            </h4>
			<div id="search">
				<form id="searchForm" action="/memModify" method="get">
					<select class="search" name="condition">
						<option value="total">전체기간</option>
						<option value="day">1일</option>
						<option value="week">1주</option>
						<option value="month">1개월</option>
						<option value="total">6개월</option>
						<option value="total">1년</option>
					</select> <select class="search" name="type">
						<option value="T">제목</option>
						<option value="W">글작성자</option>
						<option value="TC">제목 + 게시글</option>
					</select>
					<input type = "text" name = "keyword" class="search">
					<input type = "hidden" name = "pageNum" class="search" value = "${paging.cri.pageNum}">
					<input type = "hidden" name = "amount" class="search" value = "${paging.cri.amount}" >
					<input type = "button" value = "검색" class="search" id="searchbtn">
				</form>
			</div>
		</div>
	</div>
</body>
</html>