<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>
<style type="text/css">
	/* 	로그인 회원가입 사장님   */
	#quickmenu {
		text-align : right;
		margin : 0 30px;
		padding : 10px 0;
		font-size : 13px;
	}
	a {
		text-decoration: none;
		color : SlateGray;
	}
	a:visited {
    color: SlateGray;
	}
	/* 	퀵메뉴 제외 가운데 정렬 */
 	.center{ 
	 	width:100%; 
 	} 
 	.center h3{
 		text-align:center;
 	}
/*  	검색창 */
 	input {
 		color : SlateGray;
 		border: 1px solid lightGray;
  		border-radius: 3px;
  		text-indent: 10px;
  		height : 25px;
 	}
 	#SelectLocation {
 		width : 160px;
 	}
 	#SelectFoodHome {
 		width : 300px;
 	}
</style>
</head>
<body>
	<p id="quickmenu"> 
		<a href="<%= projectName %>/baemin?cmd=login-page">로그인</a> ㅣ 
		<a href="JoinForm1.jsp">회원가입</a> ㅣ 
		<a href="<%= projectName %>/baemin?cmd=boss-main">사장님</a> 
	</p>
	
	<div class="center"><h3>
		<a href="Main.jsp"><img id="logo" src="../배달의민족/로고.jpg" /></a><br/>
		<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요">
		<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요">
		<a href="FoodHomeForm.jsp"><img id="search" class="img" src="../배달의민족/검색.jpg"></a>
	</h3></div>
</body>
</html>