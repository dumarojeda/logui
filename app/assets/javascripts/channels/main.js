document.addEventListener("turbolinks:load", function() {
	$('.home__city').hover(function() {
		$(this).find('.home__city__info').toggleClass('active');
	});
	$('.home__city').click(function() {
		$('.home__city__info').removeClass('selected');
		$(this).find('.home__city__info').toggleClass('selected');
	});

	$('.home__language').click(function() {
		$('.home__language__info').removeClass('active');
		$(this).find('.home__language__info').toggleClass('active');
	});

	$('#language-modal .close').click(function() {
		$('.home__city__info').removeClass('selected');
	});

});