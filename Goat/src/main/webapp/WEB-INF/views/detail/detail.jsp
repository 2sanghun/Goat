<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${detail.title}-${detail.category}</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/JS/detail.js?version=1.0"></script>
<script type="text/javascript"
	src="../../../resources/JS/reple.js?version=1.1"></script>
<script type="text/javascript" src="/resources/JS/attach.js"></script>
<script type="text/javascript" src="../../../resources/JS/uploadAjax.js"></script>
<script type="text/javascript"
	src="../../../resources/JS/writeAttach.js"></script>
<link rel="stylesheet"
	href="../../../resources/CSS/detail.css?version=2.0">

<script type="text/javascript"
	src="../../../resources/JS/like.js?version=1.0"></script>

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
									<textarea name="title" id="title" readonly>${detail.title}</textarea>
								</c:when>

								<c:otherwise>
									<textarea name="title" id="title">${detail.title}</textarea>

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
								조회 수 <span class="title_cnt">${detail.cnt}</span> <span
									class="title_cnthno">추천 수 <span class="cnthno">${detail.cnthno}</span></span>
							</div>
						</td>
					</tr>



					<tr>
						<td colspan="4">
							<div id="uploadResult">
								<!-- 업로드 파일 영역(textarea영역에 포함시켰어요 -->
								<ul>

								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4" class="contenttext1"><c:choose>
								<c:when test="${ id==null || id != detail.id}">
									<textarea name="content" id="contenttext1" class="reHeight" readonly>${detail.content}</textarea>
								</c:when>
								<c:otherwise>
									<textarea name="content" id="contenttext1" class="reHeight">${detail.content}</textarea>
								</c:otherwise>
							</c:choose></td>
					</tr>
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
						<span class="modifybtn_box"> <input type="submit"
							value="수정" formaction="/detail/modify" id="modify">
							&nbsp;&nbsp; <input type="submit" value="삭제"
							onclick="if(!confirm('정말 삭제하시겠습니까?')){return false}"
							formaction="/detail/remove" class="remove">
						</span>
					</c:when>

					<c:when test="${id eq 'manager'}">
						<span class="modifybtn_box"> <input type="submit"
							value="삭제" onclick="confirm('매니저야 정말 삭제할꺼야?')"
							formaction="/detail/remove" class="remove">
						</span>
					</c:when>
				</c:choose>
			</div>
		</form>

		<div id="like">
			<button type="button" id="likeBtn">
				<p class="like_text">이 게시물을 추천합니다!</p>
				<br> <img src="../../../resources/image/star.png" id="likeImg"><span
					class="cnthno"> ${detail.cnthno}</span><br>
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