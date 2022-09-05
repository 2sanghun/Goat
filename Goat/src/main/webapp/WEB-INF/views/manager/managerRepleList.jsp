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
	href="../../../resources/CSS/managerRepleListCSS.css?version=1.3">
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/scrollToTop.js?version=1.2"></script>

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
			<h1 class="title">회원 댓글</h1>
		</div>
		<div class="body">
			<table class="writetable">
				<tr>
					<td class="subtitle">댓글 목록</td>
				</tr>
				<tr class="writetitle">
					<td class="write2">글번호</td>
					<td class="write3">댓글내용</td>
					<td class="write2">작성일자</td>
					<td class="write1">삭제</td>
				</tr>
				<c:forEach items="${RList}" var="RepleList">
					<tr class="writelist">
						<td>${RepleList.bno}</td>
						<td><a href="/detail/detail?bno=${RepleList.bno}">${RepleList.content}</a></td>
						<td>${RepleList.repledate}</td>
						<td><a href="/manager/repleremove?rno=${RepleList.rno}"><input
								onclick="return delchk();" type="button" value="삭제"
								class="modifybtn"></a></td>
					</tr>
				</c:forEach>
			</table>
			<a href="#" class="scrollToTop"></a>

		</div>
		<div class="footer">
			<a href="manager"><input class="back" type="button" value="닫기"></a>

		</div>
	</div>
</body>
</html>