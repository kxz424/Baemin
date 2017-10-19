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
	#sort {
		text-align: right;
	}
	.home1, .food {
		display: inline-block;
	}
	.food {
		width : 320px;
		padding : 15px;
		background-color: white;
		margin : 10px 10px;
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
	}
	.fName {
		font-weight: bold;
		text-indent: 0px;
		font-size: 18px;
		width:150px;
		display:inline-block;
		text-overflow:ellipsis; 
		overflow:hidden;
		white-space:nowrap;
	}
	.fLocation {
		width:150px;
		display:inline-block;
		text-overflow:ellipsis; 
		overflow:hidden;
		white-space:nowrap;
 		font-size: 11px; 
 		color : grey;  
	}
	.fTel {
		width:150px;
		display:inline-block;
		text-overflow:ellipsis; 
		overflow:hidden;
		white-space:nowrap;
	}
	.rCount {
		color: black;
		font-weight: bold;
		width:150px;
		display:inline-block;
		text-overflow:ellipsis; 
		overflow:hidden;
		white-space:nowrap;
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
			<div id="sort">
			<select>
				<option>5줄 보기</option>
				<option>10줄 보기</option>
				<option>15줄 보기</option>
			</select>
			</div>
			
			<% for(int i = 0 ; i < 14 ; i++ ) { %>
			<div class="food">
			<div class="home1">
				<img class="img" src="<%= projectName %>/배달의민족/치킨1.png" />
				<div class="home2">
					<div class="fName">쌀통닭 - 가산점</div>
					<div class="fLocation">서울특별시 금천동 가산구 안녕하십니까</div>
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