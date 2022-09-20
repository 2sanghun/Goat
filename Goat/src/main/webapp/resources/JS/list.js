/**
 * 
 */

$(document).ready(function(){
	var orderBy = $("#orderBy").val();
	// alert(orderBy);
	
	if(orderBy=="최신순"){
		$("#byReg").text("작성일▼");
	}else if(orderBy=="추천순"){
		$("#byCntHno").text("추천▼");
	}else if(orderBy=="조회순"){
		$("#byCnt").text("조회▼");
	}
	
	// 검색버튼을 클릭하면
	$("#searchbtn").on("click",function(){
		if($("#query").val()==""){
			alert("검색어를 입력해주세요");
			return false;
		}
		// pageNum에 1을 초기화
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchform").submit();
	})
	
	$("#query").keydown(function(keyNum){
		if(keyNum.keyCode == 13){
			// pageNum에 1을 초기화
			$("input[name='pageNum']").val("1");
			// form태그를 submit
			$("#searchform").submit();
		}
	})

	$("div.sortby > a").click(function() {
		$(this).next("ul").toggle();
		return false;
	});
	
	
	
/*	
	$("div.sortby > ul > li").click(function() {
		$(this).parent().hide().parent("div.sortby").children("a").text($(this).text());
		$(this).prependTo($(this).parent());
	});
*/
})
