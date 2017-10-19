<%@page import="model.FoodHome"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; 
//     	List<FoodHome> foodhome = (List<FoodHome>)request.getAttribute("foodhome");
    	
    %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 업소검색 </title>
<%-- <link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/FoodHomeForm.css" /> --%>
<style type="text/css">
	.home1, .food {
		display: inline-block;
	}
	.food {
		width : 300px;
		padding : 15px;
		background-color: white;
		margin : 10px 50px;
	}
	.img {
		float:left;
	}
	.home1{
		width : 100%;
	}
	.home2 {
		padding : 20px;
		text-indent: 10px;
		font-size: 13px;
		border : 1px solid red;
		margin : auto;
	}
	.fName {
		font-weight: bold;
		font-size: 18px;
	}
	.fLocation {
		font-size: 11px;
		color : grey;
	}
	.fTel {
	
	}
	.rCount {
		color: black;
		font-weight: bold;
	}
	.rCount span {
		color : coral;
	}
</style> 
</head>
<body>

<div id="">
	<div id="foodhome-all">

		<div id="foodhome-content">
			<% for(int i = 0 ; i < 14 ; i++ ) { %>
			<div class="food">
			<div class="home1">
				<img class="img" src="<%= projectName %>/배달의민족/치킨1.png" />
				<div class="home2">
					<div class="fName">쌀통닭 - 가산점</div>
					<div class="fLocation">서울특별시 금천동 가산구</div>
					<div class="fTel">070-1234-5678</div>
					<div class="rCount">리뷰 <span>35</span></div>
				</div>
			</div>
				
			</div>
			<% } %>
		</div>
	</div>
</div>
</body>
</html>