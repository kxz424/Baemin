$(function(){
	
//	$('.select').change(function(){
//		alert($('.select option:selected').val());
//	});
//	 
//	$('#modify').click(function(){
//		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
//	});
	
	$('#insert').click(function(){

		if($("#menuName").val() == "" ){
			alert('메뉴명을 입력하세요');
			return; 
		}else if ($("#menuPrice").val() == "" ){
			alert('가격을 입력하세요');
			return; 
		}
 
		$('form').submit();
		
	});
});