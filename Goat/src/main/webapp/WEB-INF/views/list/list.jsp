<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
	#content{
		width : 1000px;
		margin : 0 auto;
	}
	#top{
		background : rgb(61, 183, 204);
		text-align : center;
	}
	.topmenu{
		width : 200px;
	}
	#middle{
		margin : 20px auto 0;
	}
	h1{
		text-align : center;
	}
	hr{
		margin : 0;
		background : black;
		height : 10px;
	}
	table{
		width : 1000px;
		table-layout : fixed;
	}
	td{
		text-overflow : ellipsis;
		overflow : hidden;
		white-space : nowrap;
	}
	.bno{
		width : 8%;
		text-align : center;
	}
	.title{
		width : 50%;
	}
	.nick{
		width : 8%;
	}
	.regdate{
		width : 18%;
		text-align : center;
	}
	.cnt{
		width : 8%;
		text-align : center;
	}
	.good{
		width : 8%;
		text-align : center;
	}
</style>
</head>
<body>
	<div id="content">
		<div id="top">
			<table>
				<tr>
					<td class="topmenu">관광</td>
					<td class="topmenu">숙소</td>
					<td class="topmenu">음식</td>
					<td class="topmenu">교통</td>
					<td class="topmenu">투어</td>
				</tr>
			</table>
		</div>
		<div id="middle">
			<h1>관광</h1>
			<hr>
			<table border="1">
				<tr>
					<td class="bno">글번호</td>
					<td class="title">제목</td>
					<td class="nick">작성자</td>
					<td class="regdate">작성일</td>
					<td class="cnt">조회</td>
					<td class="good">좋아요</td>
				</tr>
				<tr>
					<td class="bno">1</td>
					<td class="title">첫번째 글</td>
					<td class="nick">pppp1</td>
					<td class="regdate">2022.08.03</td>
					<td class="cnt">3</td>
					<td class="good">5</td>
				</tr>
				<tr>
					<td class="bno">2</td>
					<td class="title">오늘쓴 글입니다</td>
					<td class="nick">oooo1</td>
					<td class="regdate">오늘 날짜면 작성한 시간만 나오게 하고 싶다 뒤는 제발 잘라줘</td>
					<td class="cnt">1</td>
					<td class="good">0</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>