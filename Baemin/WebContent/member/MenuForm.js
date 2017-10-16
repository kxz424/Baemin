$(function(){
	$('.shop-menu-panel').each(function(){
		$(this).click(function(){
			alert($(this).find('img[alt]').attr('alt'));
		});
	});
});