$(window).load(function(){
	$('.sticky').sticky({ offset: 130, stopper: '.divide' });
	$('img[alt="work"]').addClass("shadow");

	if(!$.support.placeholder) { 
		var active = document.activeElement;
		$(':text').focus(function () {
			if ($(this).attr('placeholder') != '' && $(this).val() == $(this).attr('placeholder')) {
				$(this).val('').removeClass('hasPlaceholder');
			}
		}).blur(function () {
			if ($(this).attr('placeholder') != '' && ($(this).val() == '' || $(this).val() == $(this).attr('placeholder'))) {
				$(this).val($(this).attr('placeholder')).addClass('hasPlaceholder');
			}
		});
		$(':text').blur();
		$(active).focus();
		$('form').submit(function () {
			$(this).find('.hasPlaceholder').each(function() { $(this).val(''); });
		});
	}
	
})

$(document).on("scroll",function(){
	if($(document).scrollTop()>100){ 
		$("#site-header").removeClass("large").addClass("small");
		}
		else{
		$("#site-header").removeClass("small").addClass("large");
		}
});



