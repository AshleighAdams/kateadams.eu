function scroll_to(frag)
{
	if(!frag)
		frag = window.location.hash;
	
	if(!frag)
		return;
	
	$('html, body').animate({
        scrollTop: $(frag).offset().top
    }, 500);
}

$(document).ready(function(){
	$window = $(window);
	var speed = 0.5;
	
	function slide(elm, speed, offsetx, offsety)
	{
		var y = -($window.scrollTop() * speed);
		var x = 0;
		y += offsety;
		x += offsetx;
		var coords = offsetx + " " + y + "px";
		elm.css({ backgroundPosition: coords });
	}
	
	$('.slide').each(function(){
		var elm = $(this);
		
		$window.scroll(function() {
			slide(elm, speed, "center", 0);
		});
	});
	
	scrollto();
});


