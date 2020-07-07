$(document).ready(function () {
	
	attachEvent();
	
});

function attachEvent(){
	//햄버거 메뉴 이벤트
	$('.menu').on('click', function(){
		if ($('.l-site').hasClass('is-open')) {
			$('.menu').removeClass('is-active');
			$('.l-site').removeClass('is-open');
		} else {
			$('.menu').addClass('is-active');
			$('.l-site').addClass('is-open');
		}
	});
}

