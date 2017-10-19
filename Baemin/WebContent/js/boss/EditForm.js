$(function(){
	$('.select').change(function(){
		alert($('.select option:selected').val());
	});
	
	$('#modifyBtn').click(function(){
//		alert($('#openTime').val() + " " + $('#closeTime').val() + " " + $('#tel').val() + " " + $('#content').val());
		$('form').submit();
	});
});