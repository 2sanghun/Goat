$(document).ready(function() {
	function setImageFromFile(a, expression) {
		if (a) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(expression).attr('src', e.target.result);
			}
			reader.readAsDataURL(a);
		}
	}
	
	$('input[name="uploadFile"]').change(function() {
		var j=0;
		var str="";
		for(var i=0;i<this.files.length;i++){
			var fileName = this.files[i].name;
			var fileType = this.files[i].name;
			fileType = fileType.slice(fileType.indexOf(".")+1).toLowerCase();
			if(fileType !="jpg" && fileType !="png" && fileType != "gif" && fileType !="bmp"){
				alert("이미지파일 아님");
				str+="<span>"+fileName+"</span>";
				j++;
			}else{
				str +="<img id='imageArea"+i+"' style='width:200px; height:100px'>";
			}
		}
		$("#uploadResult2").html(str);
		for(var i=0; i<this.files.length;i++){
			if(fileType =="jpg" || fileType =="png" || fileType == "gif" || fileType =="bmp"){
				setImageFromFile(this.files[i], '#imageArea'+i);
			}
		}
//		실행안됨
//		for(var i=0; i<this.files.length;i++){
//			console.log(i);
//			if (this.files && this.files[i]) {
//				 var reader = new FileReader();
//				reader.onload = function(e) {
//					console.log(i);
//					$("'#imageArea"+i+"'").attr('src', e.target.result);
//				}
//				reader.readAsDataURL(this.files[i]);
//			}
//		}
		
	});

})