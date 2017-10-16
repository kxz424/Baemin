<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사장님사이트 </title>
<style type="text/css">
	.bosslogo{ 
	 	width:100%; 
 	} 
 	.bosslogo h3{
 		text-align:center;
 	}
	.quickmenu {
		background-color : #E0E0E0;
		height : 150px;
 		padding : 35px 0 0 150px; 
	}
	.quickmenu div {
		width : 1180px;
		padding : 4px 0 0 13px;
	}
	.bossmenu {
		width : 250px;
		margin : 5px 18px;
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
		width : 300px;
	}
	.bamin .z {
		width : 300px;
		border : 1px solid lightgray;
	}
	#first {
		width : 180px;
	}
	
 	.content { 
 		width : 100%; 
 	} 
 	table {
 		margin : 50px 0 40px 0;
 	}
 	#bottom {
 		width : 100%;
 	}
 	#bosslogin:hover {
 		cursor: pointer;
 	}
 	
</style>
</head>
<body>
	<div class="bosslogo"><h3><img id="bosslogo" src="<%= projectName %>/배달의민족/사장님사이트.jpg"></h3></div>
	<div class="quickmenu">
		<a href="<%=projectName%>/baemin?cmd=boss-add-menu"><img id="addmenu" class="bossmenu" src="<%= projectName %>/배달의민족/메뉴등록.png"></a>
		<a href="<%=projectName%>/baemin?cmd=boss-sold"><img id="soldout" class="bossmenu" src="<%= projectName %>/배달의민족/품절관리.png"></a>
		<a href="<%=projectName%>/baemin?cmd=boss-edit"><img id="edit" class="bossmenu" src="<%= projectName %>/배달의민족/정보수정.png"></a>
		<a href="<%=projectName%>/baemin?cmd=boss-ing"><img id="ing" class="bossmenu" src="<%= projectName %>/배달의민족/운영중지.png"></a>
	</div>
	
	<table class="content" >
	<tr>
		<th>
			<div class="bosslogin">
				<img src="<%= projectName %>/배달의민족/g.jpg"> <br/>
				<a href="<%= projectName %>/boss/BossLoginForm.jsp" ><button id="bosslogin" >사장님사이트 로그인</button></a> <br/>
				<p> 아이디/비밀번호 찾기 ㅣ<a href="BossJoinForm1.jsp">회원가입</a> </p>
			</div>
		 </th>
		 <th>
			<div class="bamin">
				<img id="first" src="/Baemin/배달의민족/처음.png">	 <br/>
				<a href="https://ceo.baemin.com/#/about/baemin"><img class="z" src="<%= projectName %>/배달의민족/배민소개.png"></a> <br/>
				<a href="https://ceo.baemin.com/#/ad/guide"><img class="z" src="<%= projectName %>/배달의민족/광고가이드.png"></a>
			</div>
		</th>
	</tr>
	</table>
	
	<img id="bottom" src="<%= projectName %>/배달의민족/사장님하단.png">
</body>
</html>