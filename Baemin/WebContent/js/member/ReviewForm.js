$(function(){
 	$('#revBtn').click(function(){
 		alert("222");
 		var queryString = $("#frm").serialize();
 		alert(queryString);
 		$.ajax({
 			url : "/Baemin/baemin?cmd=Review-db",
 			type : "post",
 			data : queryString,
 			datatype : "text",
 			success : function(data){
 				alert("등록 성공");
 			},
 			error : function(err){
 				alert("등록 실패 : " + err);
 			}
 		});
 	});
});