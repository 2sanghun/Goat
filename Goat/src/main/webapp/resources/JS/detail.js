/**
 * 
 */

$(document).ready(function() {

	console.log($("#id").val());
	if ($("#id").val() == "") {
		console.log("비회원이면 말이다")
		$('#title').attr('readonly', true);
		$('#contenttext').attr('readonly', true);
	} else {
		console.log("회원이면")
		$('#title').attr('readonly', false);
		$('#contenttext').attr('readonly', false);
	}
	
	detailList()
	
	
/* 첨부파일 공격에 대비하기 위한 업로드 파일 확장자 제한
	.exe, .zip, .alz 등	-> 첨부 못하게
	특정 크기 이상의 파일 		-> 첨부 못하게
*/
// 함수 선언
// 정규식을 이용하여 확장자 제한
var reg = new RegExp("(.*?)\.(exe|zip|alz)$");
// 최대 크기를 설정하여 그 이상이면 제한
var maxSize = 5242880	// 5MB
//
function checkExtension(fileName, fileSize){
	// 파일크기 제한
	// 실제파일의 크기 > 최대 크기
	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
	
	// 확장자 제한
	// 실제파일명의 확장자와 정규식 비교
	// 정규식이면
	if(reg.test(fileName)){
		alert("해당 종류의 파일은 업로드 할 수 없습니다.");
		return false;
	}
	return true;
}
	
	
	// 파일 전송버튼(id="addfile")을 클릭하면
	$("#addfile").on("click",function(e){
		
		e.preventDefault();
		
		// 파일 업로드 관련 로직 처리
		var formData = new FormData();
		
		var inputFile = $("input[name='uploadFile']");
		// console.log(inputFile);
		var files = inputFile[0].files;
		
		console.log(files);
		
		for(var i=0; i<files.length; i++){
			// 함수 호출(checkExtension)
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			
			// .jsp 의 파일선택을 통해 선택한 파일들을 form태그에 추가
			formData.append("uploadFile", files[i]);
		}
		
		// ajax를 통해서 UploadController에 파일 관련 데이터 전송.
		$.ajax({
			type : "post",
			url : "/uploadAjaxAction",
			data : formData,
			contentType : false,
			processData : false,
			dataType : "json",
			success : function(result){
				console.log(result);
				
				var str = "";
				var input = "";
				$(result).each(function(i, obj){	// result가 배열이면 each(for) i가 인덱스 번호, obj[i]
					input +="<input type='text' name='attach["+i+"].fileName' value='" + obj.fileName+"'>";
					input +="<input type='text' name='attach["+i+"].uuid' value='" + obj.uuid+"'>";
					input +="<input type='text' name='attach["+i+"].uploadPath' value='" + obj.uploadPath+"'>";
					input +="<input type='text' name='attach["+i+"].image' value='" + obj.image+"'>";
					// 만약 image 결과가 true면
					if(obj.image){
						// 아래에 있는거 실행
						var filePath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
						//var filePath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
						console.log(filePath);
						
						str+="<img src='/display?fileName="+filePath+"'style='width:600px; height:auto;'>";
						
						
					}else{	// 그렇지 않으면
						// 다운로드 할 수 있도록 실행
						var filePath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
						str += "<a href='/download?fileName="+filePath+"'>"+obj.fileName+"</a>";
					}
				})
				
				$("#uploadResult ul").append(str);
				//$("#form").append(input).submit();
			}
		})
	})
	
	
	   // 수정 버튼을 클릭하면
	   // 이미 존재하는 태그에 이벤트를 처리하고 
	   // 나중에 동적으로 생기는 태그들에 대해서 파라미터 형식으로 지정(이벤트 델리게이트)
	   $("#modify").on("click", function(e){ 
		  
		   // 글 번호를 수집해서    
		   var bnoValue = $("input[name='bno']").val();
	   
	       // 글 내용을 수집해서 
		   // var contentValue = $("#uploadResult").val();
		   var contentValue = $("#uploadResult > ul").html();
		   
		   console.log(contentValue);
		   
		   // 글 제목을 수집해서 
		   var titleValue = $("textarea[name='title']").val();
	
	   // 글 수정을 하기 위한 함수 호출(글번호, 글내용, 글제목 )		   
	   modifyboard({bno:bnoValue,content:contentValue,title:titleValue});

	   }) // 글 수정
	   
		$("#uploadlist ul").on("click","button",function(e){

			console.log("delete file");
			if(confirm("이 파일을 삭제하겠습니까?")){
				var target = $(this).closest("li");
				
				console.log(target);
				
				target.remove();
				
				var uuidValue=$(this).data("uuid")
				
				console.log("첨부한 파일의 uuid는"+uuidValue);
				
				attachremove({uuid:uuidValue});
			}
	    }); // 첨부파일 삭제 
	
	
})

$(window).on('load', function(){
    reHeight();
});

function reHeight(){
    $('.reHeight').each(function(){
        var wid = $(this).outerWidth();
        var html = $(this).text();
        var pdR = $(this).css('padding-right');
        var pdL = $(this).css('padding-left');
        var fontS = $(this).css('font-size');
        var fontW = $(this).css('font-weight');
        var line = $(this).css('line-height');
        var letter = $(this).css('letter-spacing');

        $(this).after('<textarea class="txtareaHei" tabindex="-1">' + html + '</textarea>');

        $(this).next('.txtareaHei').css({
            'overflow':'hidden',
            'visibility':'hidden',
            'position':'fixed',
            'top':'-99999px',
            'left':'-99999px',
            'width':wid,
            'height':'0',
            'padding':'0 ' + pdR + ' 0 ' + pdL,
            'box-sizing':'border-box',
            'font-size':fontS,
            'font-weight':fontW,
            'line-height':line,
            'letter-spacing':letter
        });

        autoHeight();

        $(this).on('keydown keyup', function(){
            autoHeight();
        });

        function autoHeight(){
            $('.reHeight').each(function(){
                var html = $(this).val();
                $(this).next('.txtareaHei').val(html);
                var sHei = $(this).next('.txtareaHei').prop('scrollHeight');
                $(this).next('.txtareaHei').scrollTop(sHei);

                var hei = $(this).outerHeight();
                $(this).css({'min-height':sHei})
            });
        }
    });
}


function detailList(){

	var bno=$("input[name='bno']").val();
	
	$.getJSON("/attachlist",{bno:bno},function(attachlist){
		
		console.log(attachlist);
		
		//var string="";
		var str="";
		
		$(attachlist).each(function(i,attach){
			
			console.log(attach);
			
			console.log(attach.content)
			
			// 만약 image결과가 true면
			if(attach.image){
				
				var filePath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
				
				var originPath = attach.uploadPath+"\\"+attach.uuid+"_"+attach.fileName;
				originPath = originPath.replace(new RegExp(/\\/g),"/");
			    
			    // str +="<li><img src='/display?fileName="+originPath+"'style='width:600px; height:auto'></li>";
			    // str += "<p>"+attach.content+"</p>"; 
			    str += "<li>"+attach.content+"</li>"; // 이래야지 글이 나오는데 
				
				
//			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
//			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
//			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
//			    string+=" class='warning-circle'></button>";
//			    string+="<img src='/display?fileName="+filePath+"'></div></li>";
			    
			}else if(attach.fileName==null){
				
				str += "<li>"+attach.content+"</li>";
			
			}else{// 그렇지 않으면
				
				var filePath = encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName);
				
				str +="<li><a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></li>"; // 얘도 나중에 봐야함 
				str += "<li>"+attach.content+"</li>";
			
				
//			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
//			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
//			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
//			    string+=" class='warning-circle'></button>";
//			    string+="<a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></div></li>";
			}
		})
		
		
		console.log(str);
	
		
		$("#uploadResult ul").html(str); 
		//$("#uploadlist ul").html(string); 
	})
	
}


function modifyboard(board){ // 글 수정을 하기 위한 함수 선언
   
   console.log(board);
   
   
   $.ajax({    
      type:"put",
      url:"/detail/modify",  
      data:JSON.stringify(board), 
      
      contentType:"application/json; charset=utf-8",
        
      success: function(result){
         
         if(result=="success"){
            alert("글이 수정됐습니다");
            
            detailList();
            
            // list({bno:reple.bno,pageNum:reple.pageNum});            
         }
      }   
      
      })
} // 글 수정 선언 끝


function attachremove(attachlist){ // 첨부파일 삭제를 하기 위한 함수 선언 
	
	console.log(attachlist)
	
	$.ajax({
		type: "delete",
		url:"/attach/remove",
		
		data:JSON.stringify(attachlist),
	    contentType:"application/json; charset=utf-8",
		
	    success: function(result){
			
			if(result=="success"){
				alert("삭제되었습니다"); 
			
				}
	    }	
	})	
} // 첨부파일 삭제 선언 끝 