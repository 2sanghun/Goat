<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>




<thead>
  <tr>
    <th colspan="3"><input type="text" name="repleid" id="repleid" value="${reple.id}" readonly>
    <input type="hidden" name="bno" value="${reple}.reno}"></th>
  </tr>
  
</thead>
<tbody>
  <tr>
    <td colspan="3"><textarea name="replecontent" id="repletext" rows="10" cols="50">${reple.content}</textarea></td>
  </tr>
  <tr>
    <td><input type="text" name="repledate" id="repledate" value="${reple.repledate}" readonly></td>
    <td>답댓글쓰기</td>
    <td><input type="submit" value="작성"  formaction="/reple/reple" id="reple"></td>
  </tr>
</tbody>



</table>

</body>
</html>

