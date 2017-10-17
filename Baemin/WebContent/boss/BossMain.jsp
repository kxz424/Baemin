<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사장님사이트 </title>
<link type="text/css" rel="stylesheet" href="<%= projectName %>/css/boss/BossMain.css" />
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
				<p> 아이디/비밀번호 찾기 ㅣ<a href="<%= projectName %>/baemin?cmd=boss-join">회원가입</a> </p>
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