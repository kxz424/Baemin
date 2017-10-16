<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 로그인 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/LoginForm.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/member/LoginForm.js"></script>
</head>
<body>
	
	<div id="location">
	
	<div>
		<img alt="" src="/Baemin/배달의민족/로고2.jpg" id="logo" />
	</div>

	<form>
		<div id="input-padding">
		<input type="text" placeholder="배민ID(이메일 또는 아이디)" class="input"/><br/> 
		<input type="text" placeholder="비밀번호 (4~20자)" class="input" /><br/> 
		</div>
		<div id="login-padding">
		<input type="button" value="로그인" id="login"/><br/>
		</div>
	</form>

	<div id="size">
		<a href="" class="id-create">배민ID 만들기</a>
	
	<span> 
		<a href="" class="find">아이디 찾기</a> 
		<a href="" class="find">비밀번호 찾기</a>
	</span>
	</div>
	
	
	</div>
	
	
</body>
</html>