document.addEventListener("turbolinks:load", function() {
	$('.home__city').hover(function() {
		$(this).find('.home__city__info').toggleClass('active');
	});
	$('.home__city').click(function() {
		$('.home__city__info').removeClass('selected');
		$(this).find('.home__city__info').toggleClass('selected');
	});
});