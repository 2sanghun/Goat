<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container{
   widht: 50px;
   position: relative;
   top:100px;
}

td:nth-child(1){
    width:20px;
    text-align:right;
}

td:nth-child(2){

     width:100px;
    text-align:justify;
    padding: 20px;
}

#footer{
    text-align:center;
    margin-top: 20px;
}

.long{
     width: 300px
}

table{
border-collapse:collapse;
 width:100%;
}

tr{
border-bottom: 1px solid black 
}

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
</style>
</head>
<body>
<ul>
    <li><a>내정보</a></li>
    <li><a href = "memModify">내글</a></li>
    <li><a>menu2</a></li>
</ul>
  <div id = "container">
     <span>*</span> 표시는 필수 입력 표시입니다.
      <hr size = "1" color = "black">
<table>   
  <tr class = "line">
      <td><span >*</span></td>
      <td>ID</td>
      <td><input type = "text"></td>
  </tr>
  <tr>
      <td><span >*</span></td>
      <td>이름</td>
      <td><input type = "text"></td>
  </tr>
  <tr>
      <td><span >*</span></td>
      <td>비밀번호</td>
      <td><input type = "password"></td>
  </tr>
  <tr>
      <td><span >*</span></td>
      <td>비밀번호확인</td>
      <td><input type = "password"></td>
  </tr>
  <tr>
      <td><span ></span></td>
      <td>E-mail</td>
      <td><input type = "text" >
      @
      <select>
      <option value = "naver">naver.com</option>
      <option value = "daum" >daum.net</option>
      <option value = "gmail">gmail.com</option>
      <option value = "nate">nate.com</option>
      </select></td>
      </tr>
  <tr>
      <td><span>*</span></td>
      <td>주소</td>
      <td><input type = "text" class = "long"></td>
  </tr>
</table>

<div id = "footer">
<input type = "button" value = "수정" >
<a href = "../main/main"><input type = "button" value = "목록"></a>
</div>
</div>
</body>
</html>