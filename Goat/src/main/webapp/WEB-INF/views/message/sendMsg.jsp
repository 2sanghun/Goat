<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/JS/sendMsg.js"></script>
<link rel="stylesheet" href="/resources/CSS/sendMsg.css" type="text/css">
</head>
<body>
	<div class="sendMsgArea">
		<input type="text" id="sessionId" value="${id}" readonly>
		<input type="text" id="recv_id" value="${message.recv_id}" readonly>
		<div class="recieveIdArea">
			<span>받는사람 : </span>
			<span>${message.recv_nick}</span>
			<span>(${message.recv_id})</span>			
		</div>
		<div class="msgContent">
			<textarea rows="12" cols="70" id="msgContent"></textarea>
			<span id="mLength">0</span><span>/200</span>
		</div>
		<div class="btnsArea">
			<input type="button" value="보내기" id="send"> 
			<input type="button" value="취소 " onclick="window.close()">
		</div>
	</div>
</body>
</html>