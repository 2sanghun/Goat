<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl 쓴다 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 내용 보기</title>

<link rel="stylesheet" href="../../../resources/CSS/detail.css" type="text/css">
<script type="text/javascript" src="../../../resources/JS/detail.js"></script>

</head>

<body>

<%@ include file="../header/header.jsp" %>

<div id="content">

<form method="post">
<table border="1">
<tr class="tr1">
<td><span>제목</span></td>
<td colspan="2">
<input type="hidden" name="bno" value="${detail.bno}">
<input type="text" name="title" value="${detail.title}">
</td>
</tr>
<tr class="tr1">
<td><span>작성자</span></td>
<td>
<input type="text" name="nick" value="${detail.nick}" readonly></td>
<td><span>내용</span></td>
<td><textarea name="content">${detail.content}</textarea></td>
</tr>

<tr>
<td><!--아니 근데 해당 글 쓴 사람한테만 수정과 삭제 버튼 보이게 하는거 어떻게 해-->
<!-- <c:if test="${sessionScope.id == detail.writer}"> --> 
<input type="submit" value="수정하기"  formaction="/detail/modify" id="modify">
<input type="submit" value="삭제"  onclick="confirm('정말 삭제하시겠습니까?')" formaction="/detail/remove" id="remove">
<!-- </c:if> --></td>
</tr>
</table>
</form>	
</div>

<%@ include file="../header/footer.jsp" %>

</body>
</html>