$(function(){
	
	
	
//	$('.select').change(function(){
//		alert($('.select option:selected').val());
//		$('.check input').attr('checked', 'checked');
//	});
	
	
	$("input[type='checkbox']").click(function(){
		 
		if($("input[type='checkbox']").prop("checked")){
			
			$("input[type='checkbox']").attr('checked', true);
			$("input[type='hidden']").val("Y");
			
		}else{
			
			$("input[type='checkbox']").attr('checked', false);
			$("input[type='hidden']").val("N");
		}
		
		
	});
	
	 
	
	$('#soldBtn').click(function(){
		$('form').submit();
	});
	
	
});