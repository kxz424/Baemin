
$(function(){
	$(".btn-caution").click(function(){

		 if($(".cau").css("display") == "none"){   
		        jQuery('.cau').show();
		        $(".btn-caution").val('주의사항 안내 ▲');
		    } else {  
		        jQuery('.cau').hide(); 
		        $(".btn-caution").val('주의사항 안내 ▼');
		    } 
			
	});
	

	//전체선택 체크박스 클릭
	$("#chk-all").click(function(){ 
		//만약 전체 선택 체크박스가 체크된상태일경우 
		if($("#chk-all").prop("checked")) { 
			//해당화면에 전체 checkbox들을 체크해준다 
			$("input[type=checkbox]").prop("checked",true); 
			
		// 전체선택 체크박스가 해제된 경우
		} else { 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$("input[type=checkbox]").prop("checked",false); 
		} 
	});



	$(".btn-finish").click(function(){
		
		if($("#chk1").prop("checked") == false || $("#chk2").prop("checked") == false || $("#chk3").prop("checked") == false ){
			alert("필수항목을 체크해주세요.");
			return;
		}
		
		
		$("#finish").attr('href','#open');
		
	});
	
	
	$(".close").click(function(){
		
		$("#joinTerms").submit();
		
	});


});