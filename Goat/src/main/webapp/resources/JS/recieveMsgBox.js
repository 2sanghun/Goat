/**
 * 받은 쪽지 관련 javascript 처리
 */

$(document).ready(function(){
	$.ajaxSetup({async : false});
	var idValue = $("#sessionId").val();
	var total = parseInt($("#msgTotal").val());
	var pageNumValue = parseInt($("#pageNum").val());
	var endNum;
	var startNum;
	var amountValue = 10;
	//alert("토탈"+total);
	
	recieveList(idValue, pageNumValue, amountValue);
	
	// 받은쪽지에서 삭제 버튼을 클릭하면
	$("#message").on("click", ".recieveRemove", function(){
		// 메세지 번호룰 수집
		var mno = $(this).data("mno");
		
		recieveRemove({mno : mno});
		recieveList(idValue, pageNumValue, amountValue);
	})
	
	// 받은 쪽지에서 답장 버튼을 클릭하면
	$("#message").on("click", ".reMessage", function(){
		// 쪽지 보낸 사람을 수집
		var send_id = $(this).data("send_id");
		// location.replace("/message/send?recv_id="+send_id);
		window.open("/message/send?recv_id="+send_id, "_blank", "width=600, height=340");
	})
	
	$(".pageNumBtn").on("click", function(){
		pageNumValue=parseInt($(this).text());
		//alert("현재페이지 "+pageNumValue);
		recieveList(idValue, pageNumValue, amountValue);
		$("#pageNum").val(pageNumValue);
	})
	
	$(".nextBtn").on("click", function(){
		pageBeginEnd(pageNumValue);
		pageNumValue=endNum+1;
		location.replace("/message/recieveMsgBox?recv_id="+idValue+"&recv_chk=0&pageNum="+pageNumValue);
	})
	
	$(".prevBtn").on("click",function(){
		pageBeginEnd(pageNumValue);
		pageNumValue=startNum-1;
		location.replace("/message/recieveMsgBox?recv_id="+idValue+"&recv_chk=0&pageNum="+pageNumValue);
	})
	
	function recieveList(recv_id, pageNum, amount){
		$.getJSON("/message/recieveBox/"+recv_id+"/"+pageNum+"/"+amount+".json",function(msg){
			var str="";
			
			for(var i=0; i<msg.length; i++){
				str+="<li class='firstli' data-send_id>"+msg[i].send_id+"</li>"
				str+="<li><textarea id='mcontent"+msg[i].mno+"'class='mcontent' readonly>"+msg[i].mcontent+"</textarea></li>"
				str+="<li>"+msg[i].send_time+"</li>"
				str+="<li class='lastli'><input class='reMessage' type='button' value='답장' data-send_id="+msg[i].send_id+">"
				str+="<input class='recieveRemove' type='button' value='삭제' data-mno="+msg[i].mno+"><li>"
			}
			$("#message").html(str);
		})
	}
	
	function recieveRemove(msg){
		$.ajax({
			type : "put",
			url : "/message/recvRemove",
			data : JSON.stringify(msg),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(result == "success"){
					alert("메세지를 삭제했습니다");
				}
			}
		})
	}
	
	function pageBeginEnd(pageNum){
		// pageNum(현재페이지) / 10(올림)*10
		// 현재페이지는 5라 가정하면     => 5/10 = 0.5(올림) => 1 => 1*10 => 10
		// 현재페이지는 16이라 가정하면 => 16/10 = 1.6(올림) => 2 => 2*10 => 20 
		endNum = Math.ceil(pageNum/10.0)*10;
		//alert("function 엔드페이지"+endNum);
		startNum = endNum-9
		//alert("function 스타트페이지"+startNum);		
	}
})
