<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul{
    height: 20px;
    padding: 1rem;
    background-color:teal;
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
  
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
}
li{float:left;}
li a {
		
        display :block;
        background-color:teal;
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
#footer{
    text-align:center;
    margin-top: 20px;
}
h1{
         text-align:center;
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

</style>
</head>
<body>
<ul>
    <li><a href = "mypage">내정보</a></li>
    <li><a href = "memModify">내글</a></li>
    <li><a href = "favorite">회원탈퇴</a></li>
</ul>
 <div id = "container">
  <hr size = "1" color = "black">
  <h1>MEMBER INFO</h1>
  <hr size = "1" color = "black"><br><br>
  <table>
  <tr>
  <td>회원정보가 수정되었습니다.</td>
  </tr>
  </table>
   <div id = "footer">
<a href = "../main/main"><input type = "button" value = "메인으로"></a>
</div>
  </div>
</body>
</html>