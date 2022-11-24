<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/main.css?version=2.0" type="text/css">
<script type="text/javascript" src="../../../resources/JS/main.js"></script>
</head>
<body>
	<div id="container"> 
		<%@ include file="../header/header.jsp"%>
		<div id="background">
			<div class="searchresult">
				<div id="top">

					<form action="/main" method="get">
						<div class="searchdiv">
							<input type="text" placeholder="키워드를 검색하세요" id="search"
								name="keyword"> <input type="submit" value="검색"
								class="btn">
						</div>
					</form>
				</div>
				<!-- 검색 시 나타나며 검색 내용이 포함된 제목과 내용이 포함된 게시글을 표시 -->
				<div id="mid">
					<table>
						<tr id="tabletitle">
							<td>번호</td>
							<td>제목</td>
							<td>작성일</td>
							<td>작성자</td>
							<td>조회수</td>
							<td>카테고리</td>
						</tr>
						<c:forEach items="${search}" var="searchlist">
							<tr id="tablecontent">
								<td>${searchlist.bno}</td>
								<td><a href="/detail/detail?bno=${searchlist.bno}">${searchlist.title}</a></td>
								<td>${searchlist.regdate}</td>
								<td>${searchlist.nick}</td>
								<td>${searchlist.cnt}</td>
								<td>${searchlist.category}</td>
							</tr>
						</c:forEach>
					</table>
					<!-- prev(이전)이 true이면 이전버튼 활성화 -->
					<div class="page">
						<c:if test="${paging.prev}">
							<a class="pagemove"
								href="/main?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">이전</a>
						</c:if>
						<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
						<c:if test="${paging.cri.keyword!=null}">
							<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
								var="num">
								<c:choose>
									<c:when test="${paging.cri.pageNum==num}">
										<a class="selectpage"
											href="/main?pageNum=${num}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">${num}</a>
									</c:when>
									<c:otherwise>
										<a class="pagenum"
											href="/main?pageNum=${num}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">${num}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>

						<!-- next(다음)이 true이면 다음버튼 활성화 -->
						<c:if test="${paging.next}">
							<a class="pagemove"
								href="/main?pageNum=${paging.endPage+1}&amount=${paging.cri.amount}&keyword=${paging.cri.keyword}">다음</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>