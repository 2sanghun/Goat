<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 내용 보기</title>

<script type="text/javascript" src="../../../resources/JS/detail.js"></script>

<!-- css 파트 나중에 다시 뺄꺼야 -->

<style>

#content {
	width: 1000px;
	margin: 0 auto;
	position: relative;
	top: 90px;
}

table {
	width: 1000px;
	border-collapse: collapse;
	table-layout: fixed;
}

#title {
  width:990px;
  height:30px;
  font-size:20px;
  background-color:#DCDCDC;
}

#contenttext {
     width:100%;
     border: none;
}

.tr1 {
	background: #DCDCDC;
}

#td1{
    height: 30px;
	border-bottom: 1px solid black;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
    padding: 5px 330px 5px 420px; 
}



input{
    border: none;
}

td {
	height: 30px;
	border-bottom: 1px solid black;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.bno {
	width: 8%;
	text-align: center;
}

#nick{
      background-color:#DCDCDC;
      text-align:center;
}
      
#regdate{background-color:#DCDCDC;}

#modify {
	color: white;
	background-color: teal;
	border-radius: 4px;
	margin-left: -5px;
}

#remove {
	color: white;
	background-color: teal;
	border-radius: 4px;
	margin-left: -5px;
}

</style>

</head>

<body>

<%@ include file="../header/header.jsp" %>

<hr>
<hr>

<div id="content">

<form method="post">

<table border="1">
<thead>
  <tr class="tr1">
    <th colspan="4"><input type="hidden" name="bno" value="${detail.bno}"><input type="text" name="title" id="title" value="${detail.title}"></th>
  </tr>
</thead>
<tbody>
  <tr class="tr1">
    <td colspan="4">
    <input type="text" name="nick" id="nick" value="${detail.nick}" readonly>
    <input type="text" name="regdate" id="regdate" value="${detail.regdate}" readonly>
    </td>
  </tr>
  <tr>
    <td colspan="4"><textarea name="content" id="contenttext" rows="40">${detail.content}</textarea></td>
  </tr>
  <tr>
  <c:choose> 
   <c:when test="${ id != null && id == detail.id}">
	    <td colspan="4" id="td1">
	    <input type="submit" value="수정"  formaction="/detail/modify" id="modify"> &nbsp;&nbsp;
	    <input type="submit" value="삭제"  onclick="confirm('정말 삭제하시겠습니까?')" formaction="/detail/remove" id="remove">
	   </td>
  </c:when>
  <c:when test="${id eq 'manager'}">
       <td colspan="4" id="td1">
       <input type="submit" value="삭제"  onclick="confirm('매니저야 정말 삭제할꺼야?')" formaction="/detail/remove" id="remove">
	   </td>
  </c:when>
  </c:choose>     
  </tr>
</tbody>
</table>

</form>	
</div>

<%@ include file="../header/footer.jsp" %>

</body>
</html>