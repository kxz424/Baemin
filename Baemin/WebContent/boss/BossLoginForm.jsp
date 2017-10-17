<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사장님 로그인 </title>
<link type="text/css" href="<%= projectName %>/css/boss/BossLoginForm.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	
	
	$(function(){
		
		
	});
	


</script>
</head>
<body>

	<div id="location">
	
	<div>
		<img id="logo" src="<%= projectName %>/배달의민족/사장님로그인해주세요.png">
	</div>

	<form>
		<div id="input-padding">
		<input type="email" placeholder="아이디" class="input"/><br/> 
		<input type="text" placeholder="비밀번호" class="input" /><br/> 
		</div>
		<div id="login-padding">
		<input type="button" value="로그인" id="login"/><br/>
		</div>
	</form>

	<div id="size">
		<c class="id-create"><input type="checkbox" />아이디 저장</c>
	
	<span> 
		<a href="" class="find">아이디/비밀번호 찾기</a> ㅣ
		<a href="" class="find">회원가입</a>
	</span>
	</div>
	
	
	</div>
</body>
</html>