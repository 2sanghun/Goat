<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/managerWriteListCSS.css">

</head>
<body>
	<div class="container">
		<%@ include file="../header/header.jsp"%>
		<div class="header">
			<h1 class="title">회원 게시물</h1>
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
						<td>${WriteList.title}</td>
						<td>${WriteList.regdate}</td>
						<td><a href="/detail/detail?bno=${WriteList.bno}"><input type="button" value="이동" class="modifybtn"></a>
						<a href="/manager/writeremove?bno=${WriteList.bno}"><input type="button" value="삭제" class="modifybtn"></a>
						  </td>
					</tr>
				</c:forEach>
			</table>

		</div>

		<div class="footer">
			<a href="manager"><input class="back" type="button" value="취소"></a>

		</div>
	</div>
</body>
</html>