<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/mypagelist.css?version=1.2" type="text/css">
<style>
#mypagenav{
    height: 20px;
    padding: 1rem;
    background-color:green;
    list-style-type:none;
    margin:;
    padding:;
    overflow:hidden;
    font-weight: bold;
    display: flex;
    align-items: center;
    padding-top:10px;
    padding-bottom:10px;
    margin-top: 20px;
    word-spacing: 10px;
}
li{float:left;}

#mypagenav li a {
		
        display :block;
        background-color:green;
        color:#000000;
        padding:8px;
        text-decoration:none;
        text-align:center;
        font-weight:bold;
}
li a:hover{
        background-color:teal;
        color:white;
}
#container{
   width: 100%;
   position: relative;
   top:100px;
}

td:nth-child(1){
    width:5%;
    padding-top : 10px;
    padding-bottom : 10px;
}

td:nth-child(2){
   padding-top : 10px;
   padding-bottom : 10px;
     width:25%;
    text-align:justify;
    text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

td:nth-child(3){
   padding-top : 10px;
   padding-bottom : 10px;
     width:15%;
    text-align:justify;
}
td:nth-child(4){
   padding-top : 10px;
   padding-bottom : 10px;
     width:25%;
    text-align:justify;
}
td:nth-child(5){
    padding-top : 10px;
    padding-bottom : 10px;
     width:10%;
    text-align:justify;
}

td:nth-child(6){
    padding-top : 10px;
    padding-bottom : 10px;
     width:10%;
    text-align:justify;
}

#footer{
    text-align:center;
    margin-top: 20px;
}

table{
border-collapse:collapse;
 width:100%;
}

tr{
border-bottom: 1px solid black 
}

h1{
         text-align:center;
         text-shadow:2px 2px 2px gray;
}
</style>
</head>
<body>
 <div id = "container">
 <%@ include file="../header/header.jsp"%>
 
 
<ul id="mypagenav">
    <li><a href = "mypage">내정보</a></li>
    <li><a>내글</a></li>
    <li><a href = "favorite">회원탈퇴</a></li>
</ul>

  <hr size = "1" color = "black">
  <h1>MEMBER INFO</h1>
  <hr size = "1" color = "black"><br><br>
     <span>*</span> 내 게시글 관리
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
					<td class="title"><a href="detail/detail?bno=${myboard.bno}">${myboard.title}</a></td>
					<td class="nick">${myboard.category}</td>
					<td class="regdate">${myboard.regdate}</td>
					<td class="cnt">${myboard.cnt}</td>
					<td class="good">${myboard.good}</td>
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

</div>
<%@ include file="../header/footer.jsp" %>
</body>
</html>