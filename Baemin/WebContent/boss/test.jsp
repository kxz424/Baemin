<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>
<style type="text/css">
.dropdown {
/*     position: relative;  */
    display: inline-block;
    cursor: pointer;
    font-size: 15px;
    font-family: "맑은고딕";
/*     font-weight : bold; */
    width : 130px;
    letter-spacing : 3px;
    margin : 36px 10px;
}

#menu_foodhome {
    width : 100px;
    letter-spacing : 10px;
}
#menu_knowhow {
    letter-spacing : 5px;
}
.dropdown-content {
    display: none;
    position: absolute; 
    background-color: white;
/*     border : 1px solid grey; */
/*     border-top : 1px solid white; */
    width : 150px;
     z-index: 1; 
}
ul {
	list-style-type: none;
}
.dropdown:hover .dropdown-content {
    display: block;
}
#foodhome {
	width: 200px;
	letter-spacing : 7px;
}
.detailmenu a:link, .detailmenu a:visited {
	color: grey;
	text-decoration: none;
}
.dropdown>a:link, .dropdown>a:visited {
	color: black;
	text-decoration: none;
}
.detailmenu {
	display: none;
	font-weight: normal;
}

#bosslog {
	width : 170px;
	height: 70px;
	float: left;
	margin : 10px 30px 0 50px;
}
</style>
<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

	<img id="bosslog" src="<%= projectName %>/배달의민족/사장님사이트.jpg">

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