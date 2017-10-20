$(function(){
	
	
	if($("input[type='checkbox']").prop("checked")){

		$("input[type='hidden']").val("N");
		
	}else{

		$("input[type='hidden']").val("Y");

	}
	
	
	$("input[type='checkbox']").click(function(){
		 
		if($("input[type='checkbox']").prop("checked")){
			
			$("input[type='checkbox']").attr('checked', true);
			$("input[type='hidden']").val("N");
			
		}else{
			
			$("input[type='checkbox']").attr('checked', false);
			$("input[type='hidden']").val("Y");

		}

	});
	

	
	$('#ingBtn').click(function(){
		$('form').submit();
	});
	
	
});