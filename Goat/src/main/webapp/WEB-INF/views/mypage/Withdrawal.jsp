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
	color: white;
	background: linear-gradient(to right, #70e1f5, #eaecc6);
	list-style-type: none;
	margin:;
	padding:;
	overflow: hidden;
	font-weight: bold;
	display: flex;
	align-items: center;
	padding-top: 10px;
	padding-bottom: 10px;
	margin-top: 20px;
	word-spacing: 10px;
	border-radius: 50px;
}
li{float:left;}

#mypagenav li a {
	display: block;
	color: white;
	background-color:rgba(0,0,0,0);
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}
li a:hover{
        background: linear-gradient(to right, #70e1f5, #eaecc6);
        color:white;
}
#footer{
    text-align:center;
    margin-top: 20px;
}
h1{
         text-align:center;
         color: #2BC0E4;
         text-shadow:2px 2px 2px gray;
}
table{
      margin:auto;
}

#container{
   widht: 50px;
   position: relative;
   top:100px;
}

.backbtn {
	color: white;
	padding: 5px 5px;
	margin: 0px 10px 10px 0px;
	border: 0.5px solid black;
	background-color: #2BC0E4;
	border-radius: 4px;
}
</style>
</head>
<body>
 <div id = "container">
 <%@ include file="../header/header.jsp"%>
<ul id="mypagenav">
    <li><a href = "/mypage/mypage">내정보</a></li>
    <li><a href = "/memModify">내글</a></li>
    <li><a href = "/mypage/favorite">회원탈퇴</a></li>
</ul>
  <hr size = "1" color = "black">
  <h1>MEMBER INFO</h1>
  <hr size = "1" color = "black"><br><br>
  <table>
  <tr>
  <td>회원정보가 수정되었습니다.</td>
  </tr>
  </table>
   <div id = "footer">
<a href = "../main/main"><input type = "button" value = "메인으로" class="backbtn"></a>
</div>
  </div>
</body>
</html>