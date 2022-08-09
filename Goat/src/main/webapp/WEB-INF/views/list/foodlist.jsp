<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<link rel="stylesheet" href="../../../resources/CSS/list.css?version=1.1" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp" %>
	<div id="content">
		<div id="middle">
			<p id="categorylist">음식</p>
			<hr>
			<table>
				<tr id="tr1">
					<td class="bno"><span></span></td>
					<td class="title"><span>제목</span></td>
					<td class="nick"><span>작성자</span></td>
					<td class="regdate"><span>작성일</span></td>
					<td class="cnt"><span>조회</span></td>
					<td class="good"><span>좋아요</span></td>
				</tr>
				<tr>
					<td class="bno">1</td>
					<td class="title">첫번째 글</td>
					<td class="nick">pppp1</td>
					<td class="regdate">2022.08.03</td>
					<td class="cnt">8</td>
					<td class="good">5</td>
				</tr>
				<tr>
					<td class="bno">2</td>
					<td class="title">오늘쓴 글입니다</td>
					<td class="nick">oooo1</td>
					<td class="regdate">오늘 날짜면 작성한 시간만 나오게 하고 싶다 뒤는 제발 잘라줘</td>
					<td class="cnt">3</td>
					<td class="good">0</td>
				</tr>
				<tr>
					<td class="bno">3</td>
					<td class="title">그냥</td>
					<td class="nick">oooo2</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">10</td>
					<td class="good">1</td>
				</tr>
				<tr>
					<td class="bno">4</td>
					<td class="title">저냥</td>
					<td class="nick">rr1</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">11</td>
					<td class="good">1</td>
				</tr>
				<tr>
					<td class="bno">5</td>
					<td class="title">하이</td>
					<td class="nick">zd1</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">12</td>
					<td class="good">2</td>
				</tr>
				<tr>
					<td class="bno">6</td>
					<td class="title">서울은 비가 와서 난리나네요</td>
					<td class="nick">tg561</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">100</td>
					<td class="good">0</td>
				</tr>
				<tr>
					<td class="bno">7</td>
					<td class="title">침수차 5백정도면 내가사고싶네</td>
					<td class="nick">mdsf1</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">22</td>
					<td class="good">3</td>
				</tr>
				<tr>
					<td class="bno">8</td>
					<td class="title">서울은진짜장난아니네</td>
					<td class="nick">t671</td>
					<td class="regdate">2022.08.08</td>
					<td class="cnt">34</td>
					<td class="good">11</td>
				</tr>
				<tr>
					<td class="bno">9</td>
					<td class="title">회사도서울사람들만못온거같은데</td>
					<td class="nick">q001</td>
					<td class="regdate">14:55</td>
					<td class="cnt">56</td>
					<td class="good">9</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="title">그방 난 몰름</td>
					<td class="nick">oooo2</td>
					<td class="regdate">14:58</td>
					<td class="cnt">55</td>
					<td class="good">8</td>
				</tr>
				<tr>
					<td class="bno">11</td>
					<td class="title">오~ 제주도 좋구만</td>
					<td class="nick">re12</td>
					<td class="regdate">15:55</td>
					<td class="cnt">10</td>
					<td class="good">6</td>
				</tr>
				<tr>
					<td class="bno">12</td>
					<td class="title">나는지금제주도왔어~애학원방학이이번주라</td>
					<td class="nick">fgh43</td>
					<td class="regdate">16:55</td>
					<td class="cnt">11</td>
					<td class="good">3</td>
				</tr>
				<tr>
					<td class="bno">13</td>
					<td class="title">필리핀 컴</td>
					<td class="nick">vbn78</td>
					<td class="regdate">17:55</td>
					<td class="cnt">8</td>
					<td class="good">2</td>
				</tr>
				<tr>
					<td class="bno">14</td>
					<td class="title">숙소제공?</td>
					<td class="nick">oooo9</td>
					<td class="regdate">18:50</td>
					<td class="cnt">9</td>
					<td class="good">4</td>
				</tr>
				<tr>
					<td class="bno">15</td>
					<td class="title">조만간 의견 취합해볼게</td>
					<td class="nick">oooo7</td>
					<td class="regdate">20:55</td>
					<td class="cnt">1</td>
					<td class="good">0</td>
				</tr>
			</table>
		</div>
		<div id="search">
			<form id="searchform">
				<select class="search" name="period">
					<option value="total">전체기간</option>
					<option value="day">1일</option>
					<option value="week">1주</option>
					<option value="month">1개월</option>
					<option value="total">6개월</option>
					<option value="total">1년</option>
				</select>
				<select class="search" name="condition">
					<option value="conlistre">게시글 + 댓글</option>
					<option value="contitle">제목만</option>
					<option value="conid">글작성자</option>
					<option value="conre">댓글내용</option>
					<option value="conreid">댓글작성자</option>
				</select>
				<input type="text" class="search" id="query" name="query" placeholder="검색어를 입력해주세요">
				<button type="submit" class="search" id="searchbtn">검색</button>
			</form>
		</div>
	</div>
	<%@ include file="../header/footer.jsp" %>
</body>
</html>