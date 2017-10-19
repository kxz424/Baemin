
$(function(){
	
	
	
	$("#chk-all").click(function() {
		$(".chk").prop("checked", this.checked);
	});
	
	$(".chk").click(function() {
	for(var i = 1 ; i < 6 ; i++) {
		if(!$("#chk"+i).prop("checked")) {
			$("#chk-all").prop("checked", $("#chk"+i).prop("checked"));
			i=6;
		} 
		else if( i == 5 && $("#chk"+i).prop("checked") ) {
			$("#chk-all").prop("checked", $("#chk"+i).prop("checked"));
		}
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

