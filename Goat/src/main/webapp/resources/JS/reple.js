/**
 * goat임 
 */

$(document).ready(function(){ // jquery 준비 
   // 함수 호출 
   // detail jsp가 시작되자마자 bno 값을 가져오려면 
   // $(document).ready(function(){ 바로 아래에 선언해야 
    var bnoValue = $("input[name='bno']").val();
   
    var pageNumValue = 1;

    var amountValue = 10;
    
   list({bno:bnoValue,pageNum:pageNumValue,amount:amountValue});  
   // detail jsp가 시작되자마자 댓글 리스트 함수를 호출 
   
   
    // 댓글 쓰기 버튼을 클릭하면 
   $("#add").on("click",function(){
    // 댓글 쓰기 버튼을 클릭할 때, 그 때의 댓글 내용을 가져오려면 
   // $("#add").on("click",function(){ 아래에 선언해야 
   var replyValue = $("#reply").val();
   
   var idValue = $("#replyid").val();  
            
   // 댓글 쓰기를 하기 위한 함수 호출
   add({bno:bnoValue,content:replyValue,id:idValue});
   
   // list({bno:bnoValue,pageNum:pageNumValue,amount:amountValue}); // 이러면 댓글 달면 바로 밑에 나옴 
   
   }) // 댓글 쓰기 
   

    // 댓글 수정 버튼을 클릭하면
   // 이미 존재하는 태그에 이벤트를 처리하고 
   // 나중에 동적으로 생기는 태그들에 대해서 파라미터 형식으로 지정(이벤트 델리게이트)
   $("#chat").on("click", ".update", function(){ 
   // 댓글 번호를 수집해서    
   var rno=$(this).data("rno");
    // 댓글 내용을 수집해서 
   var reply=$("#replycontent"+rno).val();
    
    // 댓글 수정을 하기 위한 함수 호출(댓글번호, 댓글내용)
   modify({rno:rno,content:reply});

   }) // 댓글 수정
   
   
   // 댓글 삭제 버튼을 클릭하면
   $("#chat").on("click",".delete", function(){
      if(confirm("삭제하시겠습니까?")){
      // 댓글 번호를 수집해서    
      var rno=$(this).data("rno");
   
   // 댓글 삭제를 하기 위한 함수 호출(댓글번호)
  
   remove({rno:rno,bno:bnoValue});
   
   // list({bno:bnoValue,pageNum:pageNumValue,amount:amountValue});     
   } 

   }) // 댓글 삭제 

   $("#replePage").on("click","li a",function(e){
      e.preventDefault();
      //alert("댓글번호 클릭")
      var bnoValue=$("input[name='bno']").val();
      var pageNumValue = $(this).attr("href");
      
      console.log(bnoValue)
      console.log(pageNumValue)
      list({bno:bnoValue,pageNum:pageNumValue})
      //list(bnoValue, pageNumValue);
   
   })

}) // jquery 끝 


// 함수 선언
// 댓글 삭제를 하기 위한 함수 선언 
function remove(reple){ 
   console.log(reple);
   $.ajax({
      type: "delete",
      url:"/replies/remove",
      
      data:JSON.stringify(reple),
       contentType:"application/json; charset=utf-8",
      
       success: function(result){
         
         if(result=="success"){
            alert("댓글이 삭제되었습니다"); 
            
            //list(reple.bno)
            list({bno:reple.bno,pageNum:1})
            // list(bnoValue, pageNumValue)
          
         }
       }   
   })   
}
// 댓글 쓰기를 위한 함수 선언
function add(reple){ // add함수 선언 시작 
	console.log(reple)
   $.ajax({ 
      type:"post",
      url:"/replies/write",  
      data:JSON.stringify(reple), 
      
      contentType:"application/json; charset=utf-8",
      success: function(result){
         
         if(result=="success"){
            
            list({bno:reple.bno,pageNum:1}) // 이러면 댓글 달면 바로 밑에 나옴 
         }
      }   
   })
} // add함수 선언 끝 

function list(reple){ // list 함수 선언 시작
   
   console.log(reple);
   
   var bno=reple.bno;
   var pageNum=reple.pageNum;
   var amount=reple.amount;
   
   $.getJSON("/replies/list/"+bno+'/'+pageNum+".json",function(data){
    
      console.log(data.replecnt)
      console.log(data.list)
      
       var str = ""; 
       
          for(var i=0; i<data.list.length; i++){
             str+="<tr>" 
             str+="<td><div class='replynick'>"+data.list[i].nick+"</div></td>"
             str+="</tr>"
                
                if($("#id").val()==data.list[i].id){
                    console.log("댓글 쓴 회원만 자기 댓글에 손댈 수 있어");
                         str+="<tr>"
                           str+="<td><textarea class='replycontent' id='replycontent"+data.list[i].rno+"'>"+data.list[i].content+"</textarea></td>"
                           str+="</tr>"
                 }else{
                      console.log("나머지는 다 손 못대");
                           str+="<tr>"
                           str+="<td><textarea class='replycontent' id='replycontent"+data.list[i].rno+"' readonly>"+data.list[i].content+"</textarea></td>"
                           str+="</tr>"
                 }
                    
               if($("#id").val()==data.list[i].id){
               str+="<tr>"
               str+="<td><div class='upde'><input class='update' type='button' value='수정' data-rno="+data.list[i].rno+" data-reply='"+data.list[i].content+"'> " 
               str+="<input class='delete' type='button' value='삭제' data-rno="+data.list[i].rno+" data-reply='"+data.list[i].content+"'></div></td>" 
               str+="</tr>"
               }else{ 
                  str+="<tr>"
                   str+="<td><div class='upde'></div></td>" 
                   str+="</tr>"
                   }
          }      
       $("#replyUL").html(str);
       
       showReplePage(data.replecnt);
    });
} // list 함수 선언 끝 

function showReplePage(replecnt){
   
   console.log(replecnt) // 지금 replecnt가 0이라서 문제인거야 그래서 
   
    if(replecnt==0){ 
       
       var pageNum = 1;
       
       // var endNum = Math.ceil(pageNum/10.0)*10;
       var endNum = 1;
       
       console.log(endNum);
   
       // var startNum = endNum-9;
       var startNum = endNum; 
       
   var str="<div id='cntdiv'><ul class='cntul'>";
   
   for(var i=startNum; i<=endNum; i++){
      str+="<li class='cntli'><a href='"+i+"'>"+i+"</a></li>"
   }
   
   str+="</ul></div>"
      
   console.log("str="+str);
   
   $("#replePage").html(str);      

    }else{
   
       var pageNum = Math.ceil(replecnt/10.0);
       
       console.log(pageNum)
   
       var endNum = Math.ceil(pageNum/10.0)*10;
   
       console.log(endNum);
   
       var startNum = endNum-9;
   
       var prev=startNum !=1;

	   var next=false;
	   
	   console.log(prev)
	   console.log(next)
	   
	   if(endNum * 10 >= replecnt){
	      endNum = Math.ceil(replecnt/10.0);
	   }
	   
	   if(endNum * 10 < replecnt){
	      next=true;
	   }
   

	   var str="<div id='cntdiv'><ul class='cntul'>";
	   
	   if(prev){
	      str+="<li id='prvli'><a href='"+(startNum-1)+"'>이전</a></li>";
	   }
	   
	   for(var i=startNum; i<=endNum; i++){
	      str+="<li class='cntli'><a href='"+i+"'>"+i+"</a></li>"
	   }
	   
	   if(next){
	      str+="<li id='nxtli'><a href='"+(endNum+1)+"'>다음</a></li>";
	   }
	   str+="</ul></div>"
	      
	   console.log(str);
	   $("#replePage").html(str);
   }
}

function modify(reple){ //댓글 수정을 하기 위한 함수 선언
   
   
   
   $.ajax({    
      type:"put",
      url:"/replies/modify",  
      data:JSON.stringify(reple), 
      
      contentType:"application/json; charset=utf-8",
        
      success: function(result){
         
         if(result=="success"){
            alert("댓글이 수정됐습니다");
            
         }
      }   
      
      })
} // 댓글 수정 선언 끝 