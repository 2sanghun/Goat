<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>받은 쪽지함</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/JS/recieveMsgBox.js"></script>
<link rel="stylesheet" href="/resources/CSS/recieveMsgBox.css" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp"%>
	<div id="content">
		<div id="messageMenuArea">
			<input type="hidden" id="sessionId" value="${id}" readonly>
			<input type="hidden" id="msgTotal" value="${paging.total}" readonly>
			<input type="hidden" id="pageNum" value="${paging.cri.pageNum}" readonly>
			<div>
			<h3 class="messagename">${nick}님의 쪽지함</h3>
			</div>
			<ul>
				<li id="newBox"><a href="/message/newMsgBox?recv_id=${id}&new_chk=0">새 쪽지함</a></li>
				<li id="recieveBox"><a href="/message/recieveMsgBox?recv_id=${id}&recv_chk=0">받은 쪽지함</a></li>
				<li id="sendBox"><a href="/message/sendMsgBox?send_id=${id}&send_chk=0">보낸 쪽지함</a></li>
			</ul>
		</div>
		<div id="messageArea">
			<ul id="message">
			</ul>
			<c:if test="${paging.total==0}">
				<div id="noData">
					<p> 쪽지가 없습니다. </p>
				</div>				
			</c:if>
		</div>
		<div id="messagePage">
			<ul>
				<c:if test="${paging.prev}">
					<li class="prevBtn">이전</li>
				</c:if>
			</ul>			
			<ul>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
					<li class="pageNumBtn">${num }</li>
				</c:forEach>
			</ul>
			<ul>
				<c:if test="${paging.next}">
					<li class="nextBtn">다음</li>
				</c:if>
			</ul>
		</div>
	</div>
	<div class="footer_1">
	<%@ include file="../header/footer.jsp"%>	
	</div>
</body>
</html>