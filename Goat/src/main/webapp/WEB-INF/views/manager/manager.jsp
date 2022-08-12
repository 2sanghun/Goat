<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/managerCSS.css?version=1.2">
<script type="text/javascript" src="../../../resources/JS/pagination.js"></script>
</head>
<body>

	<div class="container">
		<%@ include file="../header/header.jsp"%>

		<div class="header">
			<h1 class="title">회원 관리 페이지</h1>
		</div>
		<div class="body">
		
			<table class="membertable">
				<thead>
					<tr>
						<td class="bodytitle" colspan="6">
							<div class="leftdiv">
								<p class="allmem"><a href="/manager/manager">전체 회원수: ${total}명</a></p>
							</div>
							<form action="/manager/memsearch">
							<div class="rightdiv">
								<span><input name="id" type="text" placeholder="검색어 입력"
									class="search"></span> <span><button type="submit" class="searchbtn">검색</button></span>
							</div>
							</form>
						</td>
					</tr>
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
						<td>${boardlist.nick}</td>
						<td>${boardlist.memdate}</td>
						<td><a href="/manager/managerWriteList?id=${boardlist.id}"><input type="button" value="글" class="modifybtn"></a>
						<a href="/manager/managerRepleList?id=${boardlist.id}"><input type="button" value="댓글" class="modifybtn"></a></td>
						<td><a href="/manager/memDetail?id=${boardlist.id}"><input type="button" value="상세"
								class="modifybtn"></a></td>
					</tr>
				</c:forEach>
				<tr class="memberlist">
						<td>${search.name}</td>
						<td>${search.id}</td>
						<td>${search.nick}</td>
						<td>${search.memdate}</td>
						<td><a href="/manager/managerWriteList?id=${search.id}"><input type="button" value="글" class="modifybtn"></a>
						<a href="/manager/managerRepleList?id=${search.id}"><input type="button" value="댓글" class="modifybtn"></a></td>
						<td><a href="/manager/memDetail?id=${search.id}"><input type="button" value="상세"
								class="modifybtn"></a></td>
					</tr>

				</tbody>
			</table>
			
		</div>
		<div class="footer">
			<table class="btntable">
				<tr>
					<td><a href=""><input class="backbtn" type="button"
							value="이전"></a> <a href=""><input class="backbtn"
							type="button" value="다음"></a></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>