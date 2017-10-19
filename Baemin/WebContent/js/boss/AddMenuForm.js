$(function(){
	
	$('.select').change(function(){
		alert($('.select option:selected').val());
	});
	 
	$('#modify').click(function(){
		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
	});
	
	$('#insert').click(function(){
		
		
		
//		alert($('#menuName').val() + " " + $('#menuPrice').val() + " " + $('#exampleInputFile').val());
		
//		$.ajax({
//			url : '/Baemin/baemin?cmd=boss-add-menu-db',
//			type : 'get',
//			dataType : 'text',
//			data : {data : '111' },
//			success : function(data){
//				alert("112");
//				alert(data);
//				
//			},
//			error : function(err){
//				alert('err: '+err);
//			}
//		});
//		
		//다음페이지로 정보 전송
		$('form').submit();
	});
});