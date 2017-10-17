
$(function(){
	
	
	
	
	$("#chk-all").click(function(){
		if($("#chk-all").prop("checked")){
			$("input[type=checkbox]").prop("checked",true);
		}else{
			$("input[type=checkbox]").prop("checked",false);
		}
	});
	
	
	$(".btn-select :eq(0)").click(function(){	
		$('#joinTerms').attr('action','/Baemin/baemin?cmd=boss-main');
		$('#joinTerms').submit();
	});

	$(".btn-select :eq(1)").click(function(){
		
		if($("#chk1").prop("checked") == false || $("#chk2").prop("checked") == false || $("#chk3").prop("checked") == false || $("#chk4").prop("checked") == false ){
			alert("필수항목을 체크해주세요.");
			return;
		}
		

		$('#joinTerms').attr('action','/Baemin/baemin?cmd=boss-join1');
		$('#joinTerms').submit();
	});
	
	
	


	
	
});

