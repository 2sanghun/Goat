<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet"
	href="../../../resources/CSS/managerCSS.css?version=3.2">
<link rel="stylesheet"
	href="../../../resources/CSS/idClickEvent.css?version=1.0">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/managerjs.js?version=1.2"></script>
<script type="text/javascript"
	src="../../../resources/JS/idClickEvent.js?version=1.0"></script>


</head>
<body>

	<div class="container">
		<%@ include file="../header/header.jsp"%>

		<div class="header">
			<h1 class="title">회원 관리 페이지</h1>
		</div>
		<div class="body">

			<div class="bodytitle">

				<div class="leftdiv">
					<p class="allmem">
						회원수 <a href="/manager/manager" class="totalmem">${total}</a>명
					</p>
				</div>

				<form action="/manager/manager" id="searchForm" method="get">
					<div class="rightdiv">
						<select name="type" class="selectbox">
							<option value="N">회원이름</option>
							<option value="I">아이디</option>
							<option value="NN">닉네임</option>
						</select> <span><input name="keyword" type="text"
							placeholder="검색어 입력" class="search"></span> <span><input
							type="submit" value="검색" class="searchbtn"></span>
					</div>
				</form>
			</div>
			<!-- bodytitle -->

			<table class="membertable">
				<thead>

					<tr class="memlistnav">
						<td class="write2">회원이름</td>
						<td class="write2">아이디</td>
						<td class="write2">닉네임</td>
						<td class="write2">가입일</td>
						<td class="write3">글/댓글</td>
						<td class="write1">관리</td>
					</tr>
				</thead>

				<c:forEach items="${list}" var="boardlist">
					<tr class="memberlist">
						<td>${boardlist.name}</td>
						<td>${boardlist.id}</td>
						<td class="nick">${boardlist.nick}
							<ul class="idul">
								<li><a
									href="/list/list?period=total&type=N&keyword=${boardlist.nick}&pageNum=1&amount=10">게시글
										보기</a></li>
								<c:if test="${id!=null and boardlist.id!=id}">
									<li><a
										href="/message/send?recv_id=${boardlist.id}&recv_nick=${boardlist.nick}"
										onclick="window.open(this.href, '_blank', 'width=600, height=400');return false;">쪽지
											보내기</a></li>
								</c:if>
							</ul>
						</td>
						<td>${boardlist.memdate}</td>
						<td><a href="/manager/managerWriteList?id=${boardlist.id}"><input
								type="button" value="글" class="modifybtn"></a> <a
							href="/manager/managerRepleList?id=${boardlist.id}"><input
								type="button" value="댓글" class="modifybtn"></a></td>
						<td><a href="/manager/memDetail?id=${boardlist.id}"><input
								type="button" value="상세" class="modifybtn"></a></td>
					</tr>
				</c:forEach>
			</table>
			<a href="#" class="scrollToTop"></a>

		</div>
		<!-- body -->

		<div class="footer">
			<div class="page">
				<!-- prev(이전)이 true이면 이전버튼 활성화 -->
				<c:if test="${paging.prev}">
					<a class="pagemove"
						href="/manager/manager?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}"></a>
				</c:if>
				<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="num">

					<c:choose>
						<c:when test="${paging.cri.pageNum==num}">
							<a class="selectpage"
								href="/manager/manager?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
						</c:when>
						<c:otherwise>
							<a class="pagenum"
								href="/manager/manager?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
						</c:otherwise>
					</c:choose>

				</c:forEach>

				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<a class="pagemove"
						href="/manager/manager?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">></a>
				</c:if>
			</div>
			<!-- 페이징 -->
		</div>
		<!-- footer -->
		<%@ include file="../header/footer.jsp"%>
	</div>
	<!-- container -->

</body>
</html>