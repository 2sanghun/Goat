/**
 * 메시지 관련 javascript 처리
 */

$(document).ready(function(){
   $.ajaxSetup({async : false});
   var send_idValue = $("#sessionId").val();
   var recv_idValue = $("#recv_id").val();
   // alert(send_idValue);
   
   $("#msgContent").on("keyup",function(){
      var content = $(this).val();
      $("#mLength").html(content.length);
      if(content.length>200){
         alert("최대 200자까지 입력 가능합니다.");
         $(this).val(content.substring(0,200));
         $("#mLength").html(200);
      }
   })
   
   $("#send").on("click",function(){
      var mcontentValue = $("#msgContent").val();      
      send({send_id:send_idValue, recv_id:recv_idValue, mcontent:mcontentValue});
      window.close();
   })
   
   function send(message){
      $.ajax({
         type : "post",
         url : "/message/send",
         data : JSON.stringify(message),
         contentType : "application/json; charset=utf-8",
         success : function(result){
            if(result == "success"){
               alert("메세지를 보냈습니다")
            }
         }
      })
   }
})