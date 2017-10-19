$(function(){
 	$('#revBtn').click(function(){
 		alert("222");
 		var queryString = $("#frm").serialize();
 		alert(queryString);
 		$.ajax({
 			type : "get",
 			url : "/Baemin/baemin",
 			data : queryString,
 			datatype : "json",
 			success : function(data){
 				alert("등록 성공");
 				alert(data);
 				
 				$('.small').remove();
 				
 				var obj = {};
 				obj = eval("(" + data + ")");
 				var arr = obj.result;
 				
 				for(var i = 0; i < arr.length; i++){
 				
	 				var small = $('<div class="media small"></div>');
	 				var a1 = $('<a class="pull-left"></a>');
	 				var span1 = $('<span class="inner-brd"></span>');
	 				var img = $('<img class="media-object" src="/Baemin/배달의민족/ㄴ치킨.jpg" />');
					var body = $('<div class="media-body"></div>');
					var heading = $('<div class="pull-center media-heading"><div>');
					var strong = $('<strong class="nick"></strong>');
					var span2 = $('<span>' + arr[i].rMember + '</span>');
					var em = $('<em>|</em>');
					var span3 = $('<span></span>');
					var datetime = $('<input type="datetime" value="' + arr[i].rDate + '" />');
					var centent = $('<p id="Review_Cont1">' + arr[i].rCentent + '</p>');
					
					span1.append(img);
					a1.append(span1);
					
					strong.append(span2);
					span3.append(datetime);
					
					heading.append(strong);
					heading.append(em);
					heading.append(span3);
					
					body.append(heading);
					body.append(centent);
					
					small.append(a1);
					small.append(body);
					
					$('.view-review').prepend(small);
				
 				}

 				
 			},
 			error : function(err){
 				alert("등록 실패 : " + err);
 			}
 		});
 	});
});