/**
 * 새로온 메시지 관련 javascript 처리
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
	
	newList(idValue, pageNumValue, amountValue);
	// pageBeginEnd(pageNumValue);
	
	// 새로운 쪽지에서 확인 버튼을 클릭하면
	$("#message").on("click", ".newRemove", function(){
		var mno = $(this).data("mno");
		
		chkNewMsg({mno : mno});
		newList(idValue, pageNumValue, amountValue);
	})
	
	$(".pageNumBtn").on("click", function(){
		pageNumValue=parseInt($(this).text());
		//alert("현재페이지 "+pageNumValue);
		newList(idValue, pageNumValue, amountValue);
		$("#pageNum").val(pageNumValue);
	})
	
	$(".nextBtn").on("click", function(){
		pageBeginEnd(pageNumValue);
		// alert("btn클릭 이벤트 "+endNum);
		pageNumValue=endNum+1;
		//alert("btn클릭 이벤트 pageNum"+pageNumValue);
		location.replace("/message/newMsgBox?recv_id="+idValue+"&new_chk=0&pageNum="+pageNumValue);		
	})
	
	$(".prevBtn").on("click",function(){
		pageBeginEnd(pageNumValue);
		//alert("btn클릭 이벤트"+startNum);
		pageNumValue=startNum-1;
		//alert("btn클릭 이벤트 pageNum"+pageNumValue);
		location.replace("/message/newMsgBox?recv_id="+idValue+"&new_chk=0&pageNum="+pageNumValue);			
	})
	
	function newList(recv_id, pageNum, amount){
		$.getJSON("/message/newBox/"+recv_id+"/"+pageNum+"/"+amount+".json", function(msg){
			var str="";
			
			for(var i=0; i<msg.length; i++){
				str+="<li class='firstli'>"+msg[i].send_id+"</li>"
				str+="<li><textarea id='mcontent"+msg[i].mno+"' class='mcontent'readonly>"+msg[i].mcontent+"</textarea></li>"
				str+="<li>"+msg[i].send_time+"</li>"
				str+="<li class='lastli'><input class='newRemove' type='button' value='확인' data-mno="+msg[i].mno+"><li>"
			}
			$("#message").html(str);
		})
	}
	
	// 새로운 쪽지 확인(DB에 new_msg를 1로 업데이트 한다)
	function chkNewMsg(msg){
		$.ajax({
			type : "put",
			url : "/message/chkNewMsg",
			data : JSON.stringify(msg),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(result == "success"){
					alert("쪽지를 확인했습니다");
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
