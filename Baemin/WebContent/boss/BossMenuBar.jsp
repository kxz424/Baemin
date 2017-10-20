<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>
<link type="text/css" rel="stylesheet" href="<%= projectName %>/css/boss/BossMenuBar.css" ></link>
<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

	<a href="<%= projectName %>/baemin?cmd=boss-main"><img id="bosslog" src="<%= projectName %>/배달의민족/사장님사이트.jpg"></a>

	<div id="menu_about" class="dropdown">
 		<a href="https://ceo.baemin.com/#/about/baemin">배달의민족소개</a>
		<div id="about" class="detailmenu dropdown-content">
			<ul>
				<li><a href="https://ceo.baemin.com/#/about/baemin">배달의민족</a></li>
				<li><a href="https://ceo.baemin.com/#/about/best">우수업소</a></li>
				<li><a href="https://ceo.baemin.com/#/about/baro">바로결제</a></li>
			</ul>
		</div>
	</div>
	
	<div id="menu_foodhome" class="dropdown">
		<a>업소관리</a>
		<div id="foodhome" class="detailmenu dropdown-content">
			<ul>
				<li><a href="<%=projectName%>/baemin?cmd=boss-add-menu">메뉴등록관리</a></li>
				<li><a href="<%=projectName%>/baemin?cmd=boss-sold">메뉴품절관리</a></li>
				<li><a href="<%=projectName%>/baemin?cmd=boss-edit">운영정보수정</a></li>
				<li><a href="<%=projectName%>/baemin?cmd=boss-ing">임시운영중지</a></li>
			</ul>
		</div>
	</div>
	
	<div id="menu_knowhow" class="dropdown">
		<a href="https://ceo.baemin.com/#/knowhow">사장님꿀팁</a>
	</div>

</body>
</html>