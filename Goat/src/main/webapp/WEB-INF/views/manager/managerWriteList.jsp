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
	href="../../../resources/CSS/managerWriteListCSS.css?version=1.7">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/scrollToTop.js?version=1.3"></script>

<script type="text/javascript">
	function delchk() {
		return confirm("삭제하시겠습니까?");
	}
</script>
</head>
<body>
	<div class="container">
		<%@ include file="../header/header.jsp"%>
		<div class="header">
			<h1 class="title">회원 게시물 목록</h1>
		</div>
		<div class="body">
			<table class="writetable">
				<tr>
					<td class="subtitle">게시글 목록</td>
				</tr>
				<tr class="writetitle">
					<td class="write1">글번호</td>
					<td class="write2">제목</td>
					<td class="write2">작성일자</td>
					<td class="write1">관리</td>
				</tr>
				<c:forEach items="${WList}" var="WriteList">
					<tr class="writelist">
						<td>${WriteList.bno}</td>
						<td><a href="/detail/detail?bno=${WriteList.bno}">${WriteList.title}</a></td>
						<td>${WriteList.regdate}</td>
						<td><a href="/manager/writeremove?bno=${WriteList.bno}"><input
								onclick="return delchk();" type="button" value="삭제"
								class="modifybtn"></a></td>
					</tr>
				</c:forEach>
			</table>
			<a href="#" class="scrollToTop"></a>

		</div>

		<div class="footer">
			<div class="page">
				<!-- prev(이전)이 true이면 이전버튼 활성화 -->
				<c:if test="${paging.prev}">
					<a class="pagemove"
						href="/manager/managerWriteList?id=${paging.cri.id}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}"><</a>
				</c:if>
				<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="num">
					<c:choose>
						<c:when test="${paging.cri.pageNum==num}">
							<a class="selectpage"
								href="/manager/managerWriteList?id=${paging.cri.id}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
						</c:when>
						<c:otherwise>

							<a class="pagenum"
								href="/manager/managerWriteList?id=${paging.cri.id}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<a class="pagemove"
						href="/manager/managerWriteList?id=${paging.cri.id}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">></a>
				</c:if>
			</div>
			<!-- 페이징 -->
			<a href="manager"><input class="back" type="button" value="닫기"></a>

		</div>
	</div>
</body>
</html>