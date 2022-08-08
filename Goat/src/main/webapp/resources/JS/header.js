window.addEventListener('load', function(){
const windowWidth = window.innerWidth;
	var cate =document.getElementById("category");
	if(windowWidth<=810){
		cate.style.visibility='hidden'; 
	}else{
		cate.style.visibility='visible';
	}
	function hidden(){
		const windowWidth = window.innerWidth;
		var cate =document.getElementById("category");
		if(windowWidth<=810){
			cate.style.visibility='hidden';
		}else{
			cate.style.visibility='visible';
		}
	}
	window.addEventListener('resize', hidden);
});