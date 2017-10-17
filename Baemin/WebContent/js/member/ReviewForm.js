$(function(){
 	$('#revBtn').click(function(){
 		alert("222");
 		var queryString = $("#frm").serialize();
 		$.ajax({
 			url : "DetailFoodHome.jsp",
 			type : "post",
 			datatype : "json",
 			data : queryString,
 			success : function(data){
 				alert(data);
 			}
 		});
 	});
});