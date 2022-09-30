<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../../resources/CSS/Withdrawal.css?version=1.0" type="text/css">
</head>
<body>
 <div id = "container">
 <%@ include file="../header/header.jsp"%>
<ul id="mypagenav">
    <li><a href = "/mypage/mypage">내정보</a></li>
    <li><a href = "/memModify">내글</a></li>
    <li><a href = "/mypage/favorite">회원탈퇴</a></li>
</ul>
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