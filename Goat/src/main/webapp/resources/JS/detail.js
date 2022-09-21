/**

 **/
 
$(document).ready(function(){
	
	console.log($("#id").val());
	if($("#id").val()==""){
		console.log("비회원이면 말이다")
		 $('#title').attr('readonly',true);
		 $('#contenttext').attr('readonly',true);
	      }else{
	    	  console.log("회원이면")
	     $('#title').attr('readonly',false);
	     $('#contenttext').attr('readonly',false);
	      }
 
})