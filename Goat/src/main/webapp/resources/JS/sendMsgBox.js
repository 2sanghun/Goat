/**
 * 보낸 쪽지 관련 javascript 처리
 */

$(document).ready(function(){
	$.ajaxSetup({async : false});
	var idValue = $("#sessionId").val();
	var total = parseInt($("#msgTotal").val());
	var pageNumValue = parseInt($("#pageNum").val());
	var endNum;
	var startNum;
	var amountValue = 10;	
	
	sendList(idValue, pageNumValue, amountValue);
	
	// 보낸메세지에서 삭제 버튼을 클릭하면
	$("#message").on("click", ".sendRemove", function(){
		// 메세지 번호룰 수집
		var mno = $(this).data("mno");
		
		sendRemove({mno : mno});
		sendList(idValue, pageNumValue, amountValue);
	})

	$(".pageNumBtn").on("click", function(){
		pageNumValue=parseInt($(this).text());
		//alert("현재페이지 "+pageNumValue);
		sendList(idValue, pageNumValue, amountValue);
		$("#pageNum").val(pageNumValue);
	})
	
	$(".nextBtn").on("click", function(){
		pageBeginEnd(pageNumValue);
		pageNumValue=endNum+1;
		location.replace("/message/sendMsgBox?send_id="+idValue+"&send_chk=0&pageNum="+pageNumValue);
	})
	
	$(".prevBtn").on("click",function(){
		pageBeginEnd(pageNumValue);
		pageNumValue=startNum-1;
		location.replace("/message/sendMsgBox?send_id="+idValue+"&send_chk=0&pageNum="+pageNumValue);
	})
	
	function sendList(send_id, pageNum, amount){
		$.getJSON("/message/sendBox/"+send_id+"/"+pageNum+"/"+amount+".json", function(msg){
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
	
	// 보낸 메세지 삭제(실제 삭제는 안 되고 DB에 send_chk 를 1로 업데이트 한다)
	function sendRemove(msg){
		$.ajax({
			type : "put",
			url : "/message/sendRemove",
			data : JSON.stringify(msg),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(result == "success"){
					alert("쪽지를 삭제했습니다");
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


