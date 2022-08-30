/**
 * goat임 
 */

$(document).ready(function(){ 
	
	var bnoValue = $("input[name='bno']").val();
	
	list(bnoValue);  // 댓글 리스트 

	$("#add").on("click",function(){
    
	var replyValue = $("#reply").val();
	
	var idValue = $("#replyid").val();  
	         
	
	add({bno:bnoValue,content:replyValue,id:idValue});
	
	}) // 댓글 쓰기 
		
	$("#chat").on("click", ".update", function(){ 
		
	var rno=$(this).data("rno");
   
	var reply=$("#replycontent"+rno).val();
    

	modify({rno:rno,content:reply});

	}) // 댓글 수정
	
	$("#chat").on("click",".delete", function(){
	  
	   if(confirm("삭제하시겠습니까?")){
		   
	   var rno=$(this).data("rno");
	      
	   
	   
	      remove({rno:rno,bno:bnoValue});
	     
	   } 

	}) // 댓글 삭제 
      
}) 



function remove(reple){ // 댓글 삭제를 하기 위한 함수 선언 
	
	
	
	$.ajax({
		type: "delete",
		url:"/replies/remove",
		
		data:JSON.stringify(reple),
	    contentType:"application/json; charset=utf-8",
		
	    success: function(result){
			
			if(result=="success"){
				alert("삭제되었습니다"); 
				list(reple.bno)}
	    }	
	})	
}

function add(reple){ // add함수 선언 시작 

	$.ajax({ 
		type:"post",
		url:"/reple/reple",  
		data:JSON.stringify(reple), 
		
		contentType:"application/json; charset=utf-8",
		success: function(result){
			
			if(result=="success"){
				
				list(reple.bno) // 이러면 댓글 달면 바로 밑에 나옴 
			}
		}	
	})
} // add함수 선언 끝 

function list(bno){// list 함수 선언 시작
	$.getJSON("/replies/"+bno+".json",function(data){
    	
    	console.log(data)
    	console.log($("#id").val())
    	
    	
    	var str = ""; 
    	
    		
    		for(var i=0; i<data.length; i++){
    			str+="<tr>" 
    			str+="<td>"+data[i].nick+"</td>"
    			str+="</tr>"
    				
    			str+="<tr>"
                str+="<td><textarea class='replycontent' id='replycontent"+data[i].rno+"'>"+data[i].content+"</textarea></td>"
        	    str+="</tr>"
        	    	
        	    if($("#id").val()==data[i].id){
        	    str+="<tr>"
        	    str+="<td><div class='upde'><input class='update' type='button' value='수정' data-rno="+data[i].rno+" data-reply='"+data[i].content+"'> " 
        	    str+="<input class='delete' type='button' value='삭제' data-rno="+data[i].rno+" data-reply='"+data[i].content+"'></div></td>" 
        	    str+="</tr>"
        	    }else{ 
        	    	str+="<tr>"
            	    str+="<td><div class='upde'></div></td>" 
            	    str+="</tr>"
        	    	 }
    		}
    	
    	$("#replyUL").html(str);
    });
} // list 함수 선언 끝 

function modify(reple){ //댓글 수정을 하기 위한 함수 선언
	
	
	
	$.ajax({ 	
		type:"put",
		url:"/replies/modify",  
		data:JSON.stringify(reple), 
		
		contentType:"application/json; charset=utf-8",
        success: function(result){
			
			if(result=="success"){
				alert("댓글 수정 성공");
				
			}
		}	
		
		})
} // 댓글 수정 선언 끝 