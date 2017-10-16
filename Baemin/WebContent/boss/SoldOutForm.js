$(function(){
	$('.select').change(function(){
		alert($('.select option:selected').val());
		$('.check input').attr('checked', 'checked');
	});
});