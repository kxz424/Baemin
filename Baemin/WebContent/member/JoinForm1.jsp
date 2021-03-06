<%@page import="org.omg.PortableServer.POA"%>
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
<script src="<%= projectName %>/js/member/JoinForm1.js"></script>
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
		
		<p id="title"> 배달의민족 가입하기</p><p id="question"> <a href="<%= projectName %>/baemin?cmd=login-page" >이미 배민 ID가 있으세요?</a> </p> <br/>
		<form method="post" action="<%= projectName %>/baemin?cmd=join-second">
			<input class="in" name="mId" id="userid" type="text" placeholder="배민ID(이메일)" /> 
			<input class="in" id="isId" type="button" value="ID 중복확인" />
			<p id="pid" class="p"></p><br/>
			<input class="in" name="mPassword" id="userpassword" type="password" placeholder="비밀번호 (4~20자)" /> <br/>
			<input class="in" id="userconfirm"type="password" placeholder="비밀번호 재입력 (4~20자)" />
			<p id="ppassword" class="p"></p><br/>

			<button id="btn" class="disabled">다음</button>
		</form> 
	</div>
</div>
</body>
</html>