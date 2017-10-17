$(function() {	
		var id; 
		var pass;
		var word;
		document.getElementById("btn").disabled = true;
		
		$(".in").keyup(function () {
			id = $("#userid").val();
			pass = $("#userpassword").val();
			word = $("#userconfirm").val();
			
			if( id != "" && pass != "" && word != "" ) {
				$("#btn").removeClass("disabled");
				$("#btn").addClass("normal");
				document.getElementById("btn").disabled = false;

			} else if( id == "" || pass == "" || word == "" ) {
				$("#btn").removeClass("normal");
				$("#btn").addClass("disabled");
				document.getElementById("btn").disabled = true;

			}
			
		});
		
		$("#btn").click(function () {
			var lo = id.indexOf("@");
			var cation = id.indexOf(".");
			var last = id.lastIndexOf("@");
			
			if ( a(id, lo, last, pass, word) )
				$("form").submit();
			else
				return false;			
		});
	
		
	});
	
	function a(id, lo, last, pass, word) {
		if( id == "" ) {
			$("#pid").html("이메일을 입력해주세요.");
			$("#ppassword").html("");
		} else if( lo == -1 ) {
			$("#pid").html("이메일 주소에 '@'를 포함해 주세요 '" + id + "'에 @가 없습니다.");
			$("#ppassword").html("");
		} else if( lo == 0 ) {
			$("#pid").html("'@' 앞 부분을 입력해 주세요 '" + id + "'는 완전하지 않습니다.");
			$("#ppassword").html("");
		} else if( id.length - lo == 1 ) {
			$("#pid").html("'@' 뒷 부분을 입력해 주세요 '" + id + "'는 완전하지 않습니다.");
			$("#ppassword").html("");
		} else if(lo != last) {
			$("#pid").html("'@' 다음 부분에 '@' 기호가 포함되면 안됩니다.");
			$("#ppassword").html("");
		} else if( pass.length < 8 || pass.length > 20 ) {
			$("#pid").html("");
			$("#ppassword").html("비밀번호를 8~20자로 입력해주세요. 현재 " + pass.length + "자 입니다.");
		} else if( pass != word ) {
			$("#pid").html("");
			$("#ppassword").html("비밀번호가 서로 다릅니다. 다시 입력해 주세요.");
		} else return true;
	}