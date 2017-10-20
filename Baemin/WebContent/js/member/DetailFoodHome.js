$(function(){
//	$('#order').click(function(){
//		alert("111");
//		$('#cart').submit();
//	});
	

	
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
						var mnPrice = $('label[name="menuPrice"]').eq(i);
						var oMoney = $('label[name="oMoney"]');
						alert(mnPrice.text().substr(0, mnPrice.text().indexOf('원')));
						oMoney.text(parseInt(oMoney.text()) + parseInt(mnPrice.text().substr(0, mnPrice.text().indexOf('원'))));
						$('input[name="oMoney"]').attr('value', oMoney.text());
						
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
					var menuName2 = $('<input type="hidden" name="menuName" value="'+ $(this).find('.small span').text() + '"/>');
					var menuPrice2 = $('<input type="hidden" name="menuPrice" value="' + $(this).find('.small strong').text().substr(0, $(this).find('.small strong').text().indexOf('원')) + '"/>');
					
					cartMenu.append(menuName);
					cartMenu.append(menuCnt);
					cartMenu.append(menuMinus);
					cartMenu.append(menuPlus);
					cartMenu.append(menuPrice);
					cartMenu.append(menuName2);
					cartMenu.append(menuPrice2);
					group.append(cartMenu);
					$('#cart').prepend(group);
					
//					flag = true;
					for(var i = 0; i < mn.length; i++){
						var mnPrice = $('label[name="menuPrice"]').eq(i);
						var oMoney = $('label[name="oMoney"]');
						alert(mnPrice.text().substr(0, mnPrice.text().indexOf('원')));
						oMoney.text(parseInt(oMoney.text()) + parseInt(mnPrice.text().substr(0, mnPrice.text().indexOf('원'))));
						$('input[name="oMoney"]').attr('value', oMoney.text());
					}
					
				}
			}else{
				var group = $('<div class="form-group"></div>');
				var cartMenu = $('<div class="cartMenu"></div>');
				var menuName = $('<label name="menuName">' + $(this).find('.small span').text() + '</label>');
				var menuCnt	= $('<input type="text" name="menuCnt" class="cnt" value="1"></input>');
				var menuMinus = $('<input type="button" class="minus" value="-" />');
				var menuPlus = $('<input type="button" class="plus" value="+" /><br/>');
				var menuPrice = $('<label name="menuPrice">' + $(this).find('.small strong').text() + '</label>');
				var menuName2 = $('<input type="hidden" name="menuName" value="'+ $(this).find('.small span').text() + '"/>');
				var menuPrice2 = $('<input type="hidden" name="menuPrice" value="' + $(this).find('.small strong').text().substr(0, $(this).find('.small strong').text().indexOf('원')) + '"/>');
				
				cartMenu.append(menuName);
				cartMenu.append(menuCnt);
				cartMenu.append(menuMinus);
				cartMenu.append(menuPlus);
				cartMenu.append(menuPrice);
				cartMenu.append(menuName2);
				cartMenu.append(menuPrice2);
				group.append(cartMenu);
				$('#cart').prepend(group);
				
				var mn = $('label[name="menuName"]');		
				
				for(var i = 0; i < mn.length; i++){
					var mnPrice = $('label[name="menuPrice"]').eq(i);
					var oMoney = $('label[name="oMoney"]');
					alert(mnPrice.text().substr(0, mnPrice.text().indexOf('원')));
					oMoney.text(parseInt(oMoney.text()) + parseInt(mnPrice.text().substr(0, mnPrice.text().indexOf('원'))));
					$('input[name="oMoney"]').attr('value', oMoney.text());
				}
				
			}			
			
			
		});
		
		
	});
	
	
	
//	
// 	$('#revBtn').click(function(){
// 		alert("222");
// 		var queryString = $("#frm").serialize();
// 		alert(queryString);
// 		$.ajax({
// 			type : "get",
// 			url : "/Baemin/baemin",
// 			data : queryString,
// 			datatype : "text",
// 			success : function(data){
// 				alert("등록 성공");
// 				alert(data);
// 			},
// 			error : function(err){
// 				alert("등록 실패 : " + err);
// 			}
// 		});
// 	});
	
	
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
$(document).on('click', '#order', function(){
	alert("111");
	$('#cart').submit();
});



