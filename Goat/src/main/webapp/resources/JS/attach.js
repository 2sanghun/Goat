/**
 * 첨부파일 관련 js
 */
$(document).ready(function() {
	// detail.jsp가 시작되자마자(ready이벤트) bno값 가져오기
	var bno=$("input[name='bno']").val();
	// alert(bno);
	
	$.getJSON("/attachlist",{bno:bno},function(attachlist){
		console.log(attachlist);
		var str="";
		
		var string="";
		
		$(attachlist).each(function(i,attach){
			// 만약 image결과가 true면
			if(attach.image){
				var filePath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
				str+="<li><img src='/display?fileName="+filePath+"'></li>";

			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
			    string+=" class='warning-circle'></button>";
			    string+="<img src='/display?fileName="+filePath+"'></div></li>";
			}else{	// 그렇지 않으면
				var filePath = encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName);
				str+="<li><a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></li>";
				
			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
			    string+=" class='warning-circle'></button>";
			    string+="<a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></div></li>";
			}
		})
		$("#uploadResult ul").html(str);
		$("#uploadlist ul").html(string);
	})


	$("#uploadlist ul").on("click","button",function(e){
		console.log("delete file");
		if(confirm("이 파일을 삭제하겠습니까?")){
			var target = $(this).closest("li");
			
			console.log(target);
			
			target.remove();
			
			var uuidValue=$(this).data("uuid")
			
			console.log("전에 첨부한 파일의 uuid는"+uuidValue);
			
			remove({uuid:uuidValue});
		}
});
	
})	


function remove(attachlist){ 
	
	console.log(attachlist)
	
	$.ajax({
		type: "delete",
		url:"/attach/remove",
		
		data:JSON.stringify(attachlist),
	    contentType:"application/json; charset=utf-8",
		
	    success: function(result){
			
			if(result=="success"){
				alert("삭제되었습니다"); 
				// list(reple.bno)
				}
	    }	
	})	
}