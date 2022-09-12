/**
 * 
 */

$(document).ready(function(){
/* 혹시 모르니까 주석 처리 해놓자
	// list_icon2에서 이미지 게시글 bno값 배열로 저장
	var bno = $("#listbno").val();
	alert(bno);

	$.getJSON("/attachlist",{bno:bno},function(attachlist){
		console.log(attachlist);
		var str="";
		
		$(attachlist).each(function(i,attach){
			// 만약 image결과가 true면
			if(attach.image){
				var filePath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
				str+="<img src='/display?fileName="+filePath+"'>";
			}
		})
		$("#uploadResult").html(str);
	})	
*/	
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
	
	
})