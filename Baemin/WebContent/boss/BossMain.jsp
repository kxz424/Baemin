<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사장님사이트 </title>
<style type="text/css">
	.bosslogo {
		
	}
	.quickmenu {
		background-color : lightgray;
		width : 100%;
		height : 150px;
/* 		border : 3px solid blue; */
		padding : 30px;
	}
	.quickmenu div {
 		margin : 10px 200px;
		width : 1170px;
/* 		border : 3px solid yellow; */
	}
	.bossmenu {
		width : 250px;
/* 		border : 3px solid red; */
		margin : 5px 15px;
	}
	.bamin img {
		border : 1px solid lightgray;
	}
	.bosslogin {
		width : 380px;
		display: inline-block;
	}
	.bosslogin img {
		width : 210px;
	}
	button {
		background-color : #20B2AA;
		width : 380px;
		height : 70px;
		font-size : 18px;
		text-align: center;
		color : white;
		border : 0px;
	}
	p {
		color : gray;
		text-align : right;
		font-size : 14px;
	}
	.bamin {
		display : inline-block;
	}
</style>
</head>
<body>
	<div class="bosslogo"><img id="bosslogo" src="<%= projectName %>/배달의민족/사장님사이트.jpg"></div>
	<div class="quickmenu">
		<div>
		<img id="addmenu" class="bossmenu" src="<%= projectName %>/배달의민족/메뉴등록.png">
		<img id="soldout" class="bossmenu" src="<%= projectName %>/배달의민족/품절관리.png">
		<img id="edit" class="bossmenu" src="<%= projectName %>/배달의민족/정보수정.png">
		<img id="ing" class="bossmenu" src="<%= projectName %>/배달의민족/운영중지.png">
		</div>
	</div>
	
	<div class="bosslogin">
		<img src="<%= projectName %>/배달의민족/g.jpg"> <br/>
		<button id="bosslogin" >사장님사이트 로그인</button> <br/>
		<p> 아이디/비밀번호 찾기 ㅣ 회원가입 </p>
	</div>
	 
	<div class="bamin">
		<img src="<%= projectName %>/배달의민족/처음.png">	 <br/>
			<img src="<%= projectName %>/배달의민족/배민소개.png"> <br/>
			<img src="<%= projectName %>/배달의민족/광고가이드.png">
	</div>
</body>
</html>