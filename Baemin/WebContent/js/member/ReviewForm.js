$(function(){
 	$('#revBtn').click(function(){
 		alert("222");
 		var queryString = $("#frm").serialize();
 		alert(queryString);
 		$.ajax({
 			type : "get",
 			url : "/Baemin/baemin",
 			data : queryString,
 			datatype : "text",
 			success : function(data){
 				alert("등록 성공");
 				alert(data);
 			},
 			error : function(err){
 				alert("등록 실패 : " + err);
 			}
 		});
 	});
});