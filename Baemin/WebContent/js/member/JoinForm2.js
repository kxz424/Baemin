//
//$(function(){
//	$(".btn-caution").click(function(){
//
//		 if($(".cau").css("display") == "none"){   
//		        jQuery('.cau').show();
//		        $(".btn-caution").val('주의사항 안내 ▲');
//		    } else {  
//		        jQuery('.cau').hide(); 
//		        $(".btn-caution").val('주의사항 안내 ▼');
//		    } 
//			
//	});
//	
//
//	//전체선택 체크박스 클릭
//	$("#chk-all").click(function(){ 
//		//만약 전체 선택 체크박스가 체크된상태일경우 
//		if($("#chk-all").prop("checked")) { 
//			//해당화면에 전체 checkbox들을 체크해준다 
//			$("input[type=checkbox]").prop("checked",true); 
//			
//		// 전체선택 체크박스가 해제된 경우
//		} else { 
//			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
//			$("input[type=checkbox]").prop("checked",false); 
//		} 
//	});
//
//
//
//	$(".btn-finish").click(function(){
//		
//		if($("#chk1").prop("checked") == false || $("#chk2").prop("checked") == false || $("#chk3").prop("checked") == false ){
//			alert("필수항목을 체크해주세요.");
//			return;
//		}
//		
//		
//		$("#finish").attr('href','#open');
//		
//	});
//	
//	
//	$(".close").click(function(){
//		
//		$("#joinTerms").submit();
//		
//	});
//
//
//});

$(function(){
	var toggle = true;
	var birth;
	
	$(".btn-caution").click(function() {
		$(".cau").slideToggle();
		if(toggle) {
			$(".btn-caution>span").html("▲");
			toggle=false;
		} else {
			$(".btn-caution>span").html("▼");
			toggle=true;
		}
	});
	
	$("#chk-all").click(function() {
		$(".chk").prop("checked", this.checked);
	});
	
	$(".chk").click(function() {
		for(var i = 1 ; i < 6 ; i++) {
			if(!$("#chk"+i).prop("checked")) {
				$("#chk-all").prop("checked", $("#chk"+i).prop("checked"));
				i=6;
			} else if( i == 5 && $("#chk"+i).prop("checked") ) {
				$("#chk-all").prop("checked", $("#chk"+i).prop("checked"));
			}
		}
	});
	
	$("#birth").keyup(function() {
		birth = $(this).val();
		if(birth > 8) {
			this.value = this.value.slice(0, 8);
		}
	});
	
	$("#join").click(function() {		
		
		
		var tel = 0;
		
		$(".tel").each(function(){
			if($(this).val() == "")
				tel++;
		});
		
		if( tel != 0 ) {
			$("#ptel").html("전화번호를 입력해주세요.");
			$("#pbirth").html("");
		} else if(birth == "") {
			$("#ptel").html("");
			$("#pbirth").html("생년월일을 입력해주세요.");1
// 		} else if () {
// 			$("#ptel").html("");
// 			$("#pbirth").html("생년월일을 8자리로 입력해 주세요.");
// 		} else if() {
// 			$("#ptel").html("");
// 			$("#pbirth").html("만 14세 미만은 회원가입이 제한됩니다.");
		} else {
			$("form").submit();
		}
		
	});
	

});