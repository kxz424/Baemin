$(function(){
	$('.select').change(function(){
		alert($('.select option:selected').val());
	});
	
	$('#modify').click(function(){
		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
	});
	
	$('#insert').click(function(){
		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
	});
});