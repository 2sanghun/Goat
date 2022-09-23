/**
 * 
 */

$(document).ready(function() {

	console.log($("#id").val());
	if ($("#id").val() == "") {
		console.log("비회원이면 말이다")
		$('#title').attr('readonly', true);
		$('#contenttext').attr('readonly', true);
	} else {
		console.log("회원이면")
		$('#title').attr('readonly', false);
		$('#contenttext').attr('readonly', false);
	}
	
	var textEle = $('#contenttext1');
	textEle.on('click', function() {
	  adjustHeight();
	});
})

function adjustHeight() {
  var textEle = $('#contenttext1');
  textEle[0].style.height = 'auto';
  var textEleHeight = textEle.prop('scrollHeight');
  textEle.css('height', textEleHeight);
};