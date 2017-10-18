$(function(){
	$('.select').change(function(){
		alert($('.select option:selected').val());
	});
	
	$('#modify').click(function(){
		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
	});
	
	$('#insert').click(function(){
		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
		
		//다음페이지로 정보 전송
		$('form').submit();
	});
});