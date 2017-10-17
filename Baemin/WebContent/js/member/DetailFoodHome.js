$(function(){
	$('#order').click(function(){
		alert("111");
		$('#cart').submit();
	});
	
	function cart(){
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
	}
	
	$('.shop-menu-panel').each(function(){
		$(this).click(function(){
			alert($(this).find('img[alt]').attr('alt'));
			if($('label[name="menuName"]').length > 0){
				var mn = $('label[name="menuName"]');
				
				for(var i = 0; i < mn.length; i++){
					if(mn.eq(i).text() == $(this).find('.small span').text()){
						alert("중복");
						$('input[name="menuCnt"]').eq(i).val($('input[name="menuCnt"]').eq(i).val() + 1);

					}else{
//						cart();
						
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
						
						return;
					}
				}
			}else{
//				cart();	
				
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
				
			}

			
			
			
			
			
		});
	});
});