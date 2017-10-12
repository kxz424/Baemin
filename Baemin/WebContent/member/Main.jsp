<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 메인 </title>
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
/* 	카테고리 */
	.category {
		width : 150px;	
		margin : 10px 13px;	
	}
	#c {
		margin : 60px 0;
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
		<a href="<%= projectName %>/baemin?cmd=join-page">회원가입</a> ㅣ 
		<a href="<%= projectName %>/baemin?cmd=boss-main">사장님</a> 
	</p>
	
	<div class="center"><h3>
		<img id="logo" src="../배달의민족/로고.jpg" /><br/>
		<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요">
<!-- 		<img id="search" class="img" src="../배달의민족/검색.jpg"> -->
		<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요">
	
	<div id="c">
		<div class="cate">
			<img class="category" src="../배달의민족/치킨.png" />
			<img class="category" src="../배달의민족/중국집.png" />
			<img class="category" src="../배달의민족/패스트푸드.png" />
			<img class="category" src="../배달의민족/피자.png" />
			<img class="category" src="../배달의민족/한식,분식.png" />
		</div>
	
		<div class="cate">
			<img class="category" src="../배달의민족/돈까스,회,일식.png" />
			<img class="category" src="../배달의민족/족발,보쌈.png" />
			<img class="category" src="../배달의민족/도시락.png" />
			<img class="category" src="../배달의민족/야식.png" />
			<img class="category" src="../배달의민족/찜,탕.png" />
		</div>
	</div>
	
	</h3></div>
</body>
</html>