
$(function(){
	
	$(".btn-select :eq(0)").click(function(){	
		$('#joinTerms').attr('action','/Baemin/baemin?cmd=boss-main');
		$('#joinTerms').submit();
	});

	$(".btn-select :eq(1)").click(function(){
		$('#joinTerms').attr('action','/Baemin/baemin?cmd=boss-join1');
		$('#joinTerms').submit();
	});
	
	
	
});

