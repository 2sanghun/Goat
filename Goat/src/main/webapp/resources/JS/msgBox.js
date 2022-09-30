/**
 * 메시지 관련 javascript 처리
 */

$(document).ready(function(){
	$.ajaxSetup({async : false});
	var idValue = $("#sessionId").val();
	var pageNumValue = 1;
	var amountValue = 10;
	var box;
	var total;
	var startNum;
	var endNum;
	var realEnd;
	var prev=false;
	var next=false;
	
	box = "new";
	getList(idValue, pageNumValue, amountValue, box);
	getTotal(idValue, box);
	paging(pageNumValue, amountValue);
	
	// 새 쪽지함을 클릭 했을 때
	$("#messageMenuArea").on("click","#newBox",function(){
		box = "new";
		pageNumValue = 1;
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 받은 쪽지함을 클릭 했을 때
	$("#messageMenuArea").on("click","#recieveBox",function(){
		box = "recieve";
		pageNumValue = 1;
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 새로온 쪽지함에서 확인 버튼을 클릭하면
	$("#message").on("click", ".newRemove", function(){
		var mno = $(this).data("mno");
		
		chkNewMsg({mno : mno});
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 받은 쪽지함에서 답장 버튼을 클릭하면
	$("#message").on("click", ".reMessage", function(){
		var send_id = $(this).data("send_id");
		window.open("/message/send?recv_id="+send_id, "_blank", "width=600, height=340");
	})
	
	// 받은 쪽지함에서 삭제 버튼을 클릭하면
	$("#message").on("click",".recieveRemove", function(){
		var mno = $(this).data("mno");
		
		recieveRemove({mno : mno});
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 보낸 쪽지함에서 삭제 버튼을 클릭하면
	$("#message").on("click", ".sendRemove", function(){
		var mno = $(this).data("mno");
		
		sendRemove({mno : mno});
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 보낸 쪽지함을 클릭 했을 때
	$("#messageMenuArea").on("click","#sendBox",function(){
		box = "send";
		pageNumValue = 1;
		getList(idValue, pageNumValue, amountValue, box);
		getTotal(idValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 페이지 번호를 클릭 했을 때
	$("#pagingArea").on("click",".pageNumBtn",function(){
		pageNumValue=parseInt($(this).text());
		getList(idValue, pageNumValue, amountValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 이전 버튼을 클릭 했을 때
	$("#pagingArea").on("click",".prevBtn", function(){
		pageNumValue = startNum-1;
		getList(idValue, pageNumValue, amountValue, box);
		paging(pageNumValue, amountValue);	
	})
	
	// 다음 버튼을 클릭 했을 때
	$("#pagingArea").on("click", ".nextBtn", function(){
		pageNumValue = endNum+1;
		getList(idValue, pageNumValue, amountValue, box);
		paging(pageNumValue, amountValue);
	})
	
	// 쪽지함 리스트 function
	function getList(user_id, pageNum, amount, box){
		$.getJSON("/message/Box/"+user_id+"/"+pageNum+"/"+amount+"/"+box+".json",function(msg){
			var str="";
			
			if(box=="send"){
				for(var i=0;i<msg.length;i++){
					str+="<li class='firstli'>"+msg[i].recv_id+"</li>"
					str+="<li><textarea id='mcontent"+msg[i].mno+"'class='mcontent' readonly>"+msg[i].mcontent+"</textarea></li>"
					str+="<li>"+msg[i].send_time+"</li>"
					str+="<li class='lastli'><input class='sendRemove' type='button' value='삭제' data-mno="+msg[i].mno+"><li>"
				}
			}
			
			if(box=="recieve"){
				for(var i=0; i<msg.length; i++){
					str+="<li class='firstli'>"+msg[i].send_id+"</li>"
					str+="<li><textarea id='mcontent"+msg[i].mno+"'class='mcontent' readonly>"+msg[i].mcontent+"</textarea></li>"
					str+="<li>"+msg[i].send_time+"</li>"
					str+="<li class='lastli'><input class='reMessage' type='button' value='답장' data-send_id="+msg[i].send_id+">"
					str+="<input class='recieveRemove' type='button' value='삭제' data-mno="+msg[i].mno+"><li>"
				}
			}
			if(box=="new"){
				for(var i=0;i<msg.length;i++){
					str+="<li class='firstli'>"+msg[i].send_id+"</li>"
					str+="<li><textarea id='mcontent"+msg[i].mno+"' class='mcontent' readonly>"+msg[i].mcontent+"</textarea></li>"
					str+="<li>"+msg[i].send_time+"</li>"
					str+="<li class='lastli'><input class='newRemove' type='button' value='확인' data-mno="+msg[i].mno+"><li>"
				}
			}
			
			$("#message").html(str);
		})
	}
	
	// 각 리스트별 total을 얻는 function
	function getTotal(user_id, box){
		$.getJSON("/message/getTotal/"+user_id+"/"+box+".json",function(data){
			total = data;
		})
	}
	
	// total을 받아와서 paging 하는 function
	function paging(pageNum, amount){
		var prevStr="";
		var numStr="";
		var nextStr="";
		var noData="";
		
		endNum = Math.ceil(pageNum/10.0)*10;
		startNum = endNum-9;
		realEnd = Math.ceil(total*1.0/amount);
		
		if(realEnd < endNum){
			endNum = realEnd;
		}
		
		prev = startNum>1;
		next = endNum<realEnd;
		
		if(prev){
			var prevStr="<li class='prevBtn'>이전</li>";
		}
		for(var i=startNum; i<=endNum; i++){
			if(i==pageNumValue){
				numStr+="<li class='pageNumBtn' style='color:red;'>"+i+"</li>";
			}else{
				numStr+="<li class='pageNumBtn'>"+i+"</li>";
			}
		}
		if(next){
			var nextStr="<li class='nextBtn'>다음</li>";	
		}
		if(total<=0){
			noData+="<li>쪽지가 없습니다.</li>";
		}
		$("#paging").html(prevStr+numStr+nextStr+noData);
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
					alert("쪽지를 확인했습니다")
				}
			}
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
					alert("쪽지를 삭제했습니다");
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
					alert("쪽자를 삭제했습니다");
				}
			}
		})
	}
})





