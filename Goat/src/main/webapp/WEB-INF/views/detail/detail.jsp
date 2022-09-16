<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 내용 보기</title>

<script type="text/javascript"
   src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script type="text/javascript" src="../../../resources/JS/detail.js"></script>
<script type="text/javascript" src="../../../resources/JS/reple.js"></script>

<script type="text/javascript" src="/resources/JS/attach.js"></script>
<script type="text/javascript" src="../../../resources/JS/uploadAjax.js"></script>

<script type="text/javascript" src="../../../resources/JS/modifyAttach.js"></script>

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
   width: 990px;
   height: 30px;
   font-size: 20px;
   background-color: #DCDCDC;
}

#contenttext {
   width: 100%;
   border: none;
}

td {
   height: 30px;
   text-overflow: ellipsis;
   overflow: hidden;
   white-space: nowrap;
}

.tr1 {
   background: #DCDCDC;
}

#td1 {
   height: 30px;
   border-bottom: 1px solid black;
   text-overflow: ellipsis;
   overflow: hidden;
   white-space: nowrap;
   padding: 5px 330px 5px 420px;
}

textarea {
   resize: none;
}

input {
   border: none;
}

.bno {
   width: 8%;
   text-align: center;
}

#nick {
   background-color: #DCDCDC;
   text-align: center;
   outline: none;
}

#regdate {
   background-color: #DCDCDC;
   outline: none;
}

#modify {
   color: white;
   background-color: teal;
   border-radius: 4px;
   margin-left: -5px;
}

.remove {
   color: white;
   background-color: teal;
   border-radius: 4px;
   margin-left: -5px;
}

#add {
   float: right;
}

#replyUL {
   border-collapse: collapse;
   border: none;
}

.replycontent {
   width: 993px;
   height: 50px;
}

.upde {
   float: right;
}

#replePage {
   margin: 0px;
   padding: 0px;
   width: 994px;
   overflow: auto;
   display: inline-block;
}

#cntdiv {
   width: 170px;
   margin: auto;
}

.cntul {
   list-style: none;
   display: inline;
   margin-left: 20px;
}

.cntli {
   display: block;
   margin: 0 3px;
   float: left;
   border: 1px solid #e6e6e6;
   width: 28px;
   height: 28px;
   line-height: 28px;
   text-align: center;
   background-color: #fff;
   font-size: 13px;
   color: #999999;
   text-decoration: none;
}

ul li {
   list-style-type: none;
   display: inline;
   margin-left: 20px;
}

.btn{position:relative;}

.warning-circle:after{content: "\00d7"; font-size:15pt;  
 width: 35px; border-radius:55%; background-color:gray;
position: absolute; top: 45px; left: 100px; transform: translate(-50%, -50%);}

</style>

</head>
 
<body>

   <%@ include file="../header/header.jsp"%>

   <hr>
   <hr>

   <input type="hidden" id="id" value="${id}">

   <div id="content">

      <form method="post" id="form">

         <table border="1">

            <thead>
               <tr class="tr1">

                  <th colspan="4"><input type="hidden" name="bno"
                     value="${detail.bno}"><input type="text" name="title"
                     id="title" value="${detail.title}"></th>

               </tr>
            </thead>

            <tbody>
               <tr class="tr1">
                  <td colspan="4"><input type="text" name="nick" id="nick"
                     value="${detail.nick}" readonly> <input type="text"
                     name="regdate" id="regdate" value="${detail.regdate}" readonly>
                  </td>
               </tr>
               <tr>
                  <td colspan="4"><textarea name="content" id="contenttext"
                        rows="40">${detail.content}</textarea>
               
                        
                     <div id="uploadResult">
                        <!-- 업로드 파일 영역(textarea영역에 포함시켰어요 -->
                        <ul>

                        </ul>
                     </div></td>

               </tr>
               <tr>

                  <c:choose>
                     <c:when test="${ id != null && id == detail.id}">
                        <td colspan="4" id="td1">
                  <div id="uploadlist">
                  전에 첨부된 파일 목록 : 
                  <ul></ul>
                  </div>                  
            
                  <div class = "form-group uploadDiv">
                  <label> 파일첨부 <input type="file" name="uploadFile"
                        id="uploadFile" hidden="" multiple>
                  </label>
                   <div id="uploadResult2"></div> 
                   <input type="button" value="파일업로드하기" id="addfile"> 
                        
                        </div>
                  
                  <br>
                  
                        <input type="submit" value="수정" formaction="/detail/modify" id="modify"> &nbsp;&nbsp; 
                        <input type="submit" value="삭제" onclick="if(!confirm('정말 삭제하시겠습니까?')){return false}" formaction="/detail/remove" class="remove"></td>
                     </c:when>
                     <c:when test="${id eq 'manager'}">
                        <td colspan="4" id="td1"><input type="submit" value="삭제"
                           onclick="confirm('매니저야 정말 삭제할꺼야?')" formaction="/detail/remove"
                           class="remove"></td>
                     </c:when>
                  </c:choose>
               </tr>
            </tbody>
         </table>

      </form>
   <div id="like">
      <button type="button" id="likeBtn"><img src="/resources/image/nlove.png" id="likeImg"></button>
   </div>
      <br>
      <div>
         <c:if test="${ id != null }">
            <textarea rows="10" cols="140" id="reply"></textarea>

            <input type="hidden" value="${id}" id="replyid">
            <input type="button" value="댓글 작성" id="add">
         </c:if>
      </div>


      <div id="chat">

         <table id="replyUL">

            <tr>
               <td></td>
               <td></td>
            </tr>


            <tr>
               <td>
                  <div></div>
               </td>
            </tr>


         </table>
      </div>

      <div id="replePage"></div>
   </div>

   <%@ include file="../header/footer.jsp"%>

</body>
</html>