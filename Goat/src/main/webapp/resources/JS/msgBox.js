/**
 * 메시지 관련 javascript 처리
 */

$(document).ready(function(){
   $.ajaxSetup({async : false});
   var idValue = $("#sessionId").val();
   // alert(send_idValue);

   newList(idValue);
   
   // 새 쪽지함을 클릭 했을 때
   $("#newBox").on("click", function(){
      newList(idValue);
   })
   
   // 방은 쪽지함을 클릭 했을 때
   $("#recieveBox").on("click", function(){
      recieveList(idValue);
   })

   $("#sendBox").on("click", function(){
      sendList(idValue);
   })
   
   // 받은메세지에서 삭제 버튼을 클릭하면
   $("#message").on("click", ".recieveRemove", function(){
      // 메세지 번호룰 수집
      var mno = $(this).data("mno");
      
      recieveRemove({mno : mno});
      // alert("remove함수호출")
      recieveList(idValue);
      // alert("list함수호출")
   })
   
   // 보낸메세지에서 삭제 버튼을 클릭하면
   $("#message").on("click", ".sendRemove", function(){
      // 메세지 번호룰 수집
      var mno = $(this).data("mno");
      
      sendRemove({mno : mno});
      // alert("remove함수호출")
      sendList(idValue);
      // alert("list함수호출")
   })
   
   // 새로운 메세지에서 확인 버튼을 클릭하면
   $("#message").on("click", ".newRemove", function(){
      // 메세지 번호룰 수집
      var mno = $(this).data("mno");
      
      chkNewMsg({mno : mno});
      // alert("remove함수호출")
      newList(idValue);
      // alert("list함수호출")
   })
   
   // 받은 메세지 리스트 함수 선언
   function recieveList(recv_id){
      $.getJSON("/message/recieveBox/"+recv_id+".json",function(msg){
         var str="";
         
         for(var i=0;i<msg.length;i++){
            str+="<li class='firstli'>"+msg[i].send_id+"</li>"
            str+="<li><textarea id='mcontent"+msg[i].mno+"' class='mcontent'>"+msg[i].mcontent+"</textarea></li>"
            str+="<li>"+msg[i].send_time+"</li>"
            str+="<li class='lastli'><input class='recieveRemove' type='button' value='삭제' data-mno="+msg[i].mno+"><li>"
         }
         $("#message").html(str);
      })
   }
   // 리시브메세지 리스트 함수 선언 끝
   
   // 보낸 메세지 리스트 함수 선언
   function sendList(send_id){
      $.getJSON("/message/sendBox/"+send_id+".json",function(msg){
         var str="";
         
         for(var i=0;i<msg.length;i++){
            str+="<li class='firstli'>"+msg[i].recv_id+"</li>"
            str+="<li><textarea id='mcontent"+msg[i].mno+"' class='mcontent'>"+msg[i].mcontent+"</textarea></li>"
            str+="<li>"+msg[i].send_time+"</li>"
            str+="<li class='lastli'><input class='sendRemove' type='button' value='삭제' data-mno="+msg[i].mno+"><li>"
         }
         $("#message").html(str);
      })
   }
   
   // 새로운 메세지 리스트 함수 선언
   function newList(recv_id){
      $.getJSON("/message/newBox/"+recv_id+".json",function(msg){
         var str="";
         
         for(var i=0;i<msg.length;i++){
            str+="<li class='firstli'>"+msg[i].send_id+"</li>"
            str+="<li><textarea id='mcontent"+msg[i].mno+"' class='mcontent'>"+msg[i].mcontent+"</textarea></li>"
            str+="<li>"+msg[i].send_time+"</li>"
            str+="<li class='lastli'><input class='newRemove' type='button' value='확인' data-mno="+msg[i].mno+"><li>"
         }
         $("#message").html(str);
      })
   }
   
   // 받은 메세지 삭제(실제 삭제는 안 되고 DB에 recv_chk 를 1로 업데이트 한다)
   function recieveRemove(msg){
      $.ajax({
         type : "put",
         url : "/message/recvRemove",
         data : JSON.stringify(msg),
         contentType : "application/json; charset=utf-8",
         success : function(result){
            if(result == "success"){
               alert("메세지를 삭제했습니다");
               // recieveList(idValue);
            }
         }
      })
   }

   // 보낸 메세지 삭제(실제 삭제는 안 되고 DB에 send_chk 를 1로 업데이트 한다)
   function sendRemove(msg){
      $.ajax({
         type : "put",
         url : "/message/sendRemove",
         data : JSON.stringify(msg),
         contentType : "application/json; charset=utf-8",
         success : function(result){
            if(result == "success"){
               alert("메세지를 삭제했습니다");
               // sendList(idValue);
            }
         }
      })
   }

   // 새로운 메세지 확인( DB에 new_msg 를 1로 업데이트 한다)
   function chkNewMsg(msg){
      $.ajax({
         type : "put",
         url : "/message/chkNewMsg",
         data : JSON.stringify(msg),
         contentType : "application/json; charset=utf-8",
         success : function(result){
            if(result == "success"){
               alert("메세지를 확인했습니다");
               // newList(idValue);
            }
         }
      })
   }
})