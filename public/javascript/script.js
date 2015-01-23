function cycleImages(){
	var $active = $('#cycler .active');
	var $next = ($active.next().length >0) ? $active.next() : $('#cycler img:first');
	$next.css('z-index', 2);
	$active.fadeOut(1500, function(){
		$active.css('z-index', 1).show().removeClass('active');
		$next.css('z-index', 3).addClass('active');
	});
}

$(document).ready(function(){
	setInterval('cycleImages()', 4000);
})