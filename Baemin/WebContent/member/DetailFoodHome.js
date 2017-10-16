$(function(){
	$('#order').click(function(){
		alert("111");
		$('#cart').submit();
	});
	
	$('.shop-menu-panel').each(function(){
		$(this).click(function(){
			alert($(this).find('img[alt]').attr('alt'));
			
			var group = $('<div class="form-group"></div>');
			var cartMenu = $('<div class="cartMenu"></div>');
			var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
			var menuCnt	= $('<input type="text" name="menuCnt" value="1"></input>');
			var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
			
			cartMenu.append(menuName);
			cartMenu.append(menuCnt);
			cartMenu.append(menuPrice);
			group.append(cartMenu);
			$('#cart').prepend(group);
			
		});
	});
});