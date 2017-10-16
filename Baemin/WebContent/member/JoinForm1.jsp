<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 일반 회원가입 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/JoinForm1.css" />
<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function() {		
		$("#btn").click(function () {
			var id = $("#userid").val(); 
			var pass = $("#userpassword").val();
			var word = $("#userconfirm").val();
			var lo = id.indexOf("@");
			var cation = id.indexOf(".");
			
			if( id == "") {
				alert("이메일을 입력하세요");
				return;
			} else if( lo < 1 || cation == -1 || cation-lo < 2 ) {
				alert("id " + id.length);
				alert("cation " + cation);
				alert(id.length-cation);
// 				alert("이메일 형식을 확인해주세요. 이메일은 영문, 숫자, @만 입력 가능합니다.");
				return;
			}else if(pass == "") {
				alert("비밀번호를 입력하세요");
				return;
			} else if(word == "") {
				alert("비밀번호 확인을 입력하세요.");
				return;
			}
			
			
			if(pass == word)
				$("form").submit();
			else 
				alert("다르다");
		});
	
		
	});
</script>
</head>
<body>
<div class="cen">
	<div class="center">
		<img id="step1" src="<%= projectName %>/배달의민족/가입1.png">
		<ul>
			<li> 배달의민족은 <b>배민ID</b>로 로그인하실 있습니다 </li>
			<li> 배민ID는 이메일가입 또는 페이스북 가입이 가능합니다. </li>
			<li> 기존 배달의민족 앱을 이용하신 회원은 <br/> <span>[이미 배민ID가 있으세요?] 버튼</span>을 눌러주세요. </li>
			<li> 사용하고 있는 이메일을 입력해야 <br/> 아이디/비밀번호 분실 시 찾을 수 있습니다. </li>
		</ul>
		
		<p id="title"> 배달의민족 가입하기</p><p id="question"> 이미 배민 ID가 있으세요? </p> <br/>
		<form >
			<input class="in" id="userid" type="email" placeholder="배민ID(이메일)" /> <br/>
			<input class="in" id="userpassword" type="password" placeholder="비밀번호 (8~20자)" /> <br/>
			<input class="in" id="userconfirm"type="password" placeholder="비밀번호 재입력 (8~20지)" /> <br/>
		
			<input id="btn" type="button" value="다음" />
		</form> 
	</div>
</div>
</body>
</html>