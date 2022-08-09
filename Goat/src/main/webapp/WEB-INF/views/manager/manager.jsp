<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/managerCSS.css">
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
								<p class="allmem">전체 회원수: * 명</p>
							</div>
							<div class="rightdiv">
								<span><input type="text" placeholder="검색어 입력" class="search"></span> 
								<span><button class="searchbtn">검색</button></span>
							</div>
						</td>
					</tr>
					<tr class="memlistnav">
						<td class="write2">회원번호</td>
						<td class="write2">아이디</td>
						<td class="write2">닉네임</td>
						<td class="write2">가입일</td>
						<td class="write3">글/댓글</td>
						<td class="write1">관리</td>
					</tr>
				</thead>
				<tbody>
				
				<tr class="memberlist">
					<td>5</td>
					<td>eeee1234</td>
					<td>eee</td>
					<td>2022-08-05</td>
					<td><a href="managerWriteList">5/1</a></td>
					<td><a href="memDetail"><input type="button" value="상세"
							class="modifybtn"></a></td>
				</tr>
				
				</tbody>
			</table>
			<nav aria-label="Page navigation example">
			<ul class="pagination pagination-seperated">
			
			</ul>
			</nav>
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