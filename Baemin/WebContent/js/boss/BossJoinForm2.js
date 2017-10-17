
$(function(){
	

	$(".btn-select").click(function(){
		
		
		if($(".boss-id>input:eq(2)").val() != $(".boss-id>input:eq(1)").val()){
			
			alert("비밀번호가 일치하지 않습니다.");
			return;

		}
		

		$("#joinTerms").submit();
		
	});
	
});