<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   widht: 50px;
   position: relative;
   top:100px;
}

td:nth-child(1){
    width:50px;
    padding-right : 100px;
    padding-top : 30px;
   
   
}

td:nth-child(2){

     width:100px;
    text-align:justify;
    padding-right : 100px;
    padding-top : 30px;
}

td:nth-child(3){

     width:100px;
    text-align:justify;
    padding-right : 100px;
    padding-top : 30px;
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
     <table>
     <tr>
     <td>번호</td>
     <td>제목</td>
     <td>작성일</td>
     </tr>
  
     </table>
</div>
</body>
</html>