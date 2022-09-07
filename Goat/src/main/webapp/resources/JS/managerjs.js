/**
 * 
 */

$(document).ready(function(){
	
	// 검색버튼을 클릭하면
	$(".searchbtn").on("click",function(){
				
		// pageNum에 1을 초기화
		$("input[name='pageNum']").val("1");
		
		// form태그를 submit
		$("#searchForm").submit();
	})

	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0}, 300);
		return false;
		});
	
})