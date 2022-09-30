<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="../../../resources/CSS/write.css?version=1.5" type="text/css">

<script type="text/javascript" src="../../../resources/JS/uploadAjax.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/writeAttach.js?version=1.6"></script>


</head> 
<body>
	<div id="container">
		<%@ include file="../header/header.jsp"%>
		<form action="/main/write" id="form" method="post">
			<div id="top">
				<h1 id="writecss">글 쓰기</h1>
			</div>  
			<div id="mid"> 
				<table>
					<tr>
						<td>
							<div id="select">
								<select name="category">
									<option value="관광">관광</option>
									<option value="숙소">숙소</option>
									<option value="음식">음식</option>
									<option value="교통">교통</option>
									<option value="투어">투어</option>
									<%
										if (id.equals("manager")) {
									%><option value="공지">공지</option>
									<%
										}
									%>
								</select>
							</div>
						</td>
						<td><input type="text" name="title" id="uploadtitle"
							placeholder="제목을 입력하세요" maxlength="40"></td>
					</tr>
				</table>
					
						<div id="uploadResult" contentEditable = "true" style="height:500px;">
							<ul></ul>		
						</div>
					
				<table>
					<tr>
						<td><label> 파일첨부 <input type="file" name="uploadFile"
								id="uploadFile" hidden="" multiple>
						</label></td>
						<td style="text-align: left"><div id="uploadResult2"></div></td>
					</tr>
				</table>
				<div id="button">
					<input type="button" id="uploadBtn" value="작성" class="button">
					<a href="/main"><input type="button" value="취소" class="button"></a>
				</div>
			</div>
			<div id="bottom"></div>
		</form>
		<%@ include file="../header/footer.jsp"%>
	</div>
</body>
</html>