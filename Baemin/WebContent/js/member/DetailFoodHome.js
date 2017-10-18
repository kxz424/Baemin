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
						mn.next().eq(i).attr('value', parseInt(mn.next().eq(i).val()) + 1);
						flag = true;
//						var mnPrice = mn.next().next().next().next();
//						var oMoney = $('label[name="oMoney"]');
//						alert(mnPrice.text().substr(0, mnPrice.val()-1));
//						oMoney.text(parseInt(oMoney.text()) + parseInt(mnPrice.val().substr(0, mnPrice.val()-1)));
						
					}
				}
				
				if(flag == false){
					var group = $('<div class="form-group"></div>');
					var cartMenu = $('<div class="cartMenu"></div>');
					var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
					var menuCnt	= $('<input type="text" name="menuCnt" class="cnt" value="1"></input>');
					var menuMinus = $('<input type="button" class="minus" value="-" />');
					var menuPlus = $('<input type="button" class="plus" value="+"/><br/>');
					var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
					
					cartMenu.append(menuName);
					cartMenu.append(menuCnt);
					cartMenu.append(menuMinus);
					cartMenu.append(menuPlus);
					cartMenu.append(menuPrice);
					group.append(cartMenu);
					$('#cart').prepend(group);
					
//					flag = true;
					
				}
			}else{
				var group = $('<div class="form-group"></div>');
				var cartMenu = $('<div class="cartMenu"></div>');
				var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
				var menuCnt	= $('<input type="text" name="menuCnt" class="cnt" value="1"></input>');
				var menuMinus = $('<input type="button" class="minus" value="-" />');
				var menuPlus = $('<input type="button" class="plus" value="+" /><br/>');
				var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
				
				cartMenu.append(menuName);
				cartMenu.append(menuCnt);
				cartMenu.append(menuMinus);
				cartMenu.append(menuPlus);
				cartMenu.append(menuPrice);
				group.append(cartMenu);
				$('#cart').prepend(group);
				
			}			
			
			
		});
		
		
	});
	
	
});

//동적 이벤트처리
$(document).on('click','.plus',function(){
	var cnt = parseInt($(this).prev().prev().val()) + 1;
//	alert( cnt );	
	$(this).prev().prev().attr('value', cnt);
});

$(document).on('click','.minus',function(){
	var cnt = parseInt($(this).prev().val()) - 1;
//	alert( cnt );
	if(cnt < 1){
		$(this).parent().parent().remove();
	}else{
		$(this).prev().attr('value', cnt);
	}
});


