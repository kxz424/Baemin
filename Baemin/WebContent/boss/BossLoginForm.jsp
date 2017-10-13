<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사장님 로그인 </title>
<style type="text/css">
 	body { 
 		background-color: #f4f4f4; 
 	} 
	#location { position: static; left: 50%; margin-top: 100px; }
	#logo { width: 220px; height: auto; }
	div { text-align: center; }
	form { text-align: center; }
	
	#login { width: 400px; height: 60px; 
			 background-color: #2ac1bc; color: #FFFFFF; 
			 font-size: 16px; border:0; outline:0; 
			 cursor: pointer;}
	.input { width: 400px; height: 60px; padding: 12px; }
	
	#input-padding { padding-top: 20px; }
	#login-padding { padding-top: 10px; }
	
	.id-create { margin-right: 150px; }
	#size { font-size: 13px; }
	
	a:link { color: grey; }
	a:visited { color: grey; }
	a:active { color: grey; }
	a:hover { color: grey; }
	
	#logo {
		width : 300px;
	}
</style>
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