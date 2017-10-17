$(function(){
	$('#order').click(function(){
		alert("111");
		$('#cart').submit();
	});
	

	
	$('.shop-menu-panel').each(function(){
		
		var flag = false;
		
		$(this).click(function(){
			
			
			if($('label[name="menuName"]').length){
				var mn = $('label[name="menuName"]');				
				
				for(var i = 0; i < mn.length; i++){
					if(mn.eq(i).text() == $(this).find('.small span').text()){
//						alert("중복");
//						mn.next().eq(i).val(parseInt(mn.next().eq(i).val()) + 1);
						flag = true;
					}
				}
				
				if(flag == false){
					var group = $('<div class="form-group"></div>');
					var cartMenu = $('<div class="cartMenu"></div>');
					var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
					var menuMinus = $('<input type="button" class="minus" value="-" />');
					var menuCnt	= $('<input type="text" name="menuCnt" value="1"></input>');
					var menuPlus = $('<input type="button" class="plus" value="+" />');
					var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
					
					var menuBtn = $('<input type="button" class="mBtn" value="X" />');
					
					cartMenu.append(menuName);
					cartMenu.append(menuMinus);
					cartMenu.append(menuCnt);
					cartMenu.append(menuPlus);
					cartMenu.append(menuPrice);
					cartMenu.append(menuBtn);
					group.append(cartMenu);
					$('#cart').prepend(group);
					
					menuCnt.val('1');
				}
			}else{
				var group = $('<div class="form-group"></div>');
				var cartMenu = $('<div class="cartMenu"></div>');
				var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
				var menuMinus = $('<input type="button" class="minus" value="-" />');
				var menuCnt	= $('<input type="text" name="menuCnt" value="1"></input>');
				var menuPlus = $('<input type="button" class="plus" value="+" />');
				var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
				var menuBtn = $('<input type="button" class="mBtn" value="X" />');
				
				cartMenu.append(menuName);
				cartMenu.append(menuMinus);
				cartMenu.append(menuCnt);
				cartMenu.append(menuPlus);
				cartMenu.append(menuPrice);
				cartMenu.append(menuBtn);
				group.append(cartMenu);
				$('#cart').prepend(group);
				
				
				
			}			
			
			$('.mBtn').each(function(){
				$(this).click(function(){
					$(this).parent().parent().remove();
				});
			});
			
			$('.minus').each(function(){
				$(this).click(function(){
					$(this).next().val($(this).next().val() - 1);
				});
			});
			
			$('.plus').each(function(){
				$(this).click(function(){
					$(this).prev().val(parseInt($(this).prev().val()) + 1);
				});
			});
			
			
		});
		
		
	});
	
	
	
	
	
});