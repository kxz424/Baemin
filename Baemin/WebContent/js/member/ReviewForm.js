$(function(){
 	$('#revBtn').click(function(){
 		alert("222");
 		var queryString = $("#frm").serialize();
 		alert(queryString);
 		$.ajax({
 			url : "/Baemin/baemin?cmd=Review-db",
 			type : "post",
 			data : queryString,
 			datatype : "json",
 			success : function(data){
 				alert(data);
 			}
 		});
 	});
});