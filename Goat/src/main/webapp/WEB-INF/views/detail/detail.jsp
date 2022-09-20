<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${detail.title}</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/JS/detail.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/reple.js?version=1.1"></script>
<script type="text/javascript" src="/resources/JS/attach.js"></script>
<script type="text/javascript" src="../../../resources/JS/uploadAjax.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/writeAttach.js"></script>
<link rel="stylesheet"
	href="../../../resources/CSS/detail.css?version=1.5">

<script type="text/javascript" src="../../../resources/JS/like.js"></script>
</head>

<body>

	<%@ include file="../header/header.jsp"%>
	<div id="content">
		<form method="post" id="form">
			<input type="hidden" id="id" value="${id}"> <input
				type="hidden" name="bno" value="${detail.bno}">
			<table border="1">
				<thead>
					<tr class="tr1">
						<td colspan="4"><c:choose>

								<c:when test="${ id==null || id != detail.id}">
									<span id="title">${detail.title}</span>

								</c:when>

								<c:otherwise>
									<span id="title">${detail.title}</span>

								</c:otherwise>

							</c:choose> <span id="regdate"> ${detail.regdate}</span></td>

					</tr>
				</thead>

				<tbody>
					<tr class="tr1">

						<td colspan="4">
							<div class="side">
								<span class="title_nick">${detail.nick}</span>
							</div>

							<div class="side_right">
								조회 수<span class="title_cnt"> ${detail.cnt}</span> 추천 수<span
									class="title_cnthno"> ${detail.cnthno}</span>
							</div>
						</td>
					</tr>



					<tr>
						<td colspan="4">
							<div id="uploadResult">
								<!-- 업로드 파일 영역(textarea영역에 포함시켰어요 -->
								<ul>

								</ul>
							</div> <c:choose>
								<c:when test="${ id==null || id != detail.id}">
									<textarea name="content" id="contenttext1" rows="40" readonly>${detail.content}</textarea>
								</c:when>
								<c:otherwise>
									<textarea name="content" id="contenttext1" rows="40">${detail.content}</textarea>
								</c:otherwise>
							</c:choose>
						</td>
				</tbody>
			</table>
			<div class="upload_file">
				<c:choose>
					<c:when test="${ id != null && id == detail.id}">

						<div class="form-group uploadDiv">
							<label> 파일 첨부 <input type="file" name="uploadFile"
								id="uploadFile" hidden="" multiple>
							</label>
						</div>

						<div id="uploadlist">
							<span class="uploadlist">첨부된 파일 목록 : </span><input type="button"
								value="파일 업로드" id="addfile">

							<!-- 업로드 된 파일 목록 -->
							<ul></ul>
							<!-- 업로드 전 파일 목록 -->
							<div id="uploadResult2"></div>

						</div>

						<input type="submit" value="수정" formaction="/detail/modify"
							id="modify"> &nbsp;&nbsp; <input type="submit" value="삭제"
							onclick="if(!confirm('정말 삭제하시겠습니까?')){return false}"
							formaction="/detail/remove" class="remove">
					</c:when>

					<c:when test="${id eq 'manager'}">
						<input type="submit" value="삭제"
							onclick="confirm('매니저야 정말 삭제할꺼야?')" formaction="/detail/remove"
							class="remove">
					</c:when>
				</c:choose>
			</div>
		</form>

		<div id="like">
			<button type="button" id="likeBtn">
				<span id="likeImg">추천 👍</span>
			</button>
		</div>
		<br>
		<div>
			<c:if test="${ id != null }">
				<div class="reply_box">
					<p>댓글 쓰기</p>
					<textarea rows="10" cols="140" id="reply"></textarea>

					<input type="hidden" value="${id}" id="replyid"> <input
						type="button" value="등록" id="add">
				</div>
			</c:if>
		</div>


		<div id="chat">

			<table id="replyUL">

				<tr class="reple_nick">
					<td></td>
					<td></td>
				</tr>


				<tr class="reple_who">
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