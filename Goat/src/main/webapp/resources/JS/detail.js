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
	
})

$(window).on('load', function(){
    reHeight();
});

function reHeight(){
    $('.reHeight').each(function(){
        var wid = $(this).outerWidth();
        var html = $(this).text();
        var pdR = $(this).css('padding-right');
        var pdL = $(this).css('padding-left');
        var fontS = $(this).css('font-size');
        var fontW = $(this).css('font-weight');
        var line = $(this).css('line-height');
        var letter = $(this).css('letter-spacing');

        $(this).after('<textarea class="txtareaHei" tabindex="-1">' + html + '</textarea>');

        $(this).next('.txtareaHei').css({
            'overflow':'hidden',
            'visibility':'hidden',
            'position':'fixed',
            'top':'-99999px',
            'left':'-99999px',
            'width':wid,
            'height':'0',
            'padding':'0 ' + pdR + ' 0 ' + pdL,
            'box-sizing':'border-box',
            'font-size':fontS,
            'font-weight':fontW,
            'line-height':line,
            'letter-spacing':letter
        });

        autoHeight();

        $(this).on('keydown keyup', function(){
            autoHeight();
        });

        function autoHeight(){
            $('.reHeight').each(function(){
                var html = $(this).val();
                $(this).next('.txtareaHei').val(html);
                var sHei = $(this).next('.txtareaHei').prop('scrollHeight');
                $(this).next('.txtareaHei').scrollTop(sHei);

                var hei = $(this).outerHeight();
                $(this).css({'min-height':sHei})
            });
        }
    });
}