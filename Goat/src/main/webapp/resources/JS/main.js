window.addEventListener('load', function(){
	var random=Math.floor(Math.random()*14)+1;
	function ran(a){
		return "url('../../../resources/image/travel"+a+".jpg')"
	}
	document.getElementById("background").style.backgroundImage=ran(random);
});