<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>

 <c:choose> 
 <c:when test="${ id != null}">

<thead>
  <tr>
    <tr>
    <th><input type="text" name="repleid" id="repleid" value="${reple.id}" readonly>댓글작성자아이디인듯근데이것도닉네임이어야하는거아니냐</th>
    <th colspan="2"><input type="hidden" name="bno" value="${reple}.reno}">이거는답글의reno인데안보이게처리</th>
  </tr>
  </tr>
</thead>
<tbody>
  <tr>
    <td colspan="3"><textarea name="replecontent" id="repletext" rows="10">${reple.content}</textarea></td>
  </tr>
  <tr>
    <td><input type="text" name="repledate" id="repledate" value="${reple.repledate}" readonly></td>
    <td>나중에답댓글다는버튼만들꺼야</td>
    <td><input type="submit" value="작성"  formaction="/reple/reple" id="reple"></td>
  </tr>
</tbody>
  </c:when>
  </c:choose>   
</table>

</body>
</html>

