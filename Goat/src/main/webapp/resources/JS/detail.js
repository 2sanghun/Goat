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
		
		var string="";
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
				
				
			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
			    string+=" class='warning-circle'></button>";
			    string+="<img src='/display?fileName="+filePath+"'></div></li>";
			    
			}else if(attach.fileName==null){
				
				str += "<li>"+attach.content+"</li>";
			
			}else{// 그렇지 않으면
				
				var filePath = encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName);
				
				str +="<li><a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></li>"; // 얘도 나중에 봐야함 
				str += "<li>"+attach.content+"</li>";
			
				
			    string+="<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"'";
			    string+="data-filename='"+attach.fileName+"' data-type='"+attach.image+"'><div class='btn'>";
			    string+="<button type='button' data-file='"+filePath+"' data-type='image' data-uuid='"+attach.uuid+"'";
			    string+=" class='warning-circle'></button>";
			    string+="<a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></div></li>";
			}
		})
		
		
		console.log(str);
	
		
		$("#uploadResult ul").html(str); 
		$("#uploadlist ul").html(string); 
	})
	
}


function modifyboard(board){ // 글 수정을 하기 위한 함수 선언
   
   console.log(board);
   alert("되나안되나")
   
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