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
	
	$("#join").click(function() {		
		
		var chk = true;
		for(var i = 1 ; i < 4 ; i++) {
			chk &= $("#chk"+i).prop("checked");
		}
		
		if(chk != 1) {
			alert("필수항목을 체크하세요");
			return false;
		}
		
		var tel = 0;
		
		$(".tel").each(function(){
			if($(this).val() == "")
				tel++;
		});
		
		var birth = $("#birth").val();
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth() +1;
		var date = today.getDate();
		
		var age = year - birth.substr(0,4);
		
		if(birth.substr(4,2) - month > 0 || birth.substr(6,2) > date > 0)
			age -= 1;
		
		if( tel != 0 ) {
			$("#ptel").html("전화번호를 입력해주세요.");
			$("#pbirth").html("");
			return false;
		} else if(birth == "") {
			$("#ptel").html("");
			$("#pbirth").html("생년월일을 입력해주세요.");
			return false;
 		} else if (birth.length != 8) {
 			$("#ptel").html("");
 			$("#pbirth").html("생년월일을 8자리로 입력해 주세요.");
 			return false;
 		} else if(age < 14) {
 			$("#ptel").html("");
 			$("#pbirth").html("만 14세 미만은 회원가입이 제한됩니다.");
 			return false;
		}
	});
	
	$("#finish").click(function() {
		$("form").submit();
	});

});