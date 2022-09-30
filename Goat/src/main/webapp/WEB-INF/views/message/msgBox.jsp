<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지함</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/JS/msgBox.js"></script>
<link rel="stylesheet" href="/resources/CSS/msgBox.css?version=1.1" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp"%>
	<div id="content">
		<div id="messageMenuArea">
			<input type="hidden" id="sessionId" value="${id}" readonly>
			<div>
			<h3 class="messagename">${nick}님의 쪽지함</h3>
			</div>
			<ul>
				<li id="newBox">새 쪽지함</li>
				<li id="recieveBox">받은 쪽지함</li>
				<li id="sendBox">보낸 쪽지함</li>
			</ul>
		</div>
		<div id="messageArea">
			<ul id="message">
			</ul>
		</div>
		<div id="pagingArea">
			<ul id="paging">
			</ul>
		</div>
	</div>
</body>
</html>