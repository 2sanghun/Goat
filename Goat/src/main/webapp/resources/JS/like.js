/**
 * 
 */

$(document).ready(function(){
	
	var bnoValue = $("input[name='bno']").val();
	var idValue = $("#id").val();
	var likeValue;
	$.ajaxSetup({async : false});
	
	checkLike(bnoValue, idValue);
	
	$("#likeBtn").on("click", function(){
		like({bno:bnoValue, id:idValue});
		checkLike(bnoValue, idValue);
	})
	
	// checkLike 함수 선언
	function checkLike(bno, id){
		// alert("게시글 번호 : "+bno);
		// alert("현재 로그인 한 아이디 : "+id);
		$.getJSON("/like/checkLike/"+bno+"/"+id+".json",function(data){
			likeValue = data;
			// alert("checkLike 함수 실행 "+likeValue)
			// alert("좋아요 체크(1이면 좋아요상태, 0이면 좋아요가 아닌 상태)"+likeValue);
			if(likeValue>0){
				$("#likeImg").attr("src","/resources/image/love.png");
			} else{
				$("#likeImg").attr("src","/resources/image/nlove.png");
			}
		})
	}
	
	// like 함수 선언
	function like(like){
		if(likeValue==0){
			$.ajax({
				type : "post",
				url : "/like/likeUp",
				data : JSON.stringify(like),
				contentType : "application/json; charset=utf-8",
				success : function(result){
					if(result == "success"){
						alert("좋아요");
					}
				}
			})
		} else{
			$.ajax({
				type : "delete",
				url : "/like/likeDown",
				data : JSON.stringify(like),
				contentType : "application/json; charset=utf-8",
				success : function(result){
					if(result == "success"){
						alert("좋아요 취소");
					}
				}
			})
		}
	}
		
})