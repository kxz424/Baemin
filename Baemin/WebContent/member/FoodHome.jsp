<%@page import="model.FoodHome"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; 
    	List<FoodHome> foodhome = (List<FoodHome>)request.getAttribute("foodhome");
    	
    %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 업소검색 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/member/FoodHome.css" />
<script type="text/javascript">
	$(function() {
		$(".food").click(function() {
			$(this).find('form').submit();
		});
	});
</script>
</head>
<body>

<div id="foodhome">
	<div id="foodhome-all">
		<div id="foodhome-content">
		
			<div id="sort">
			<select>
				<option>5줄 보기</option>
				<option>10줄 보기</option>
				<option>15줄 보기</option>
			</select>
			</div>
			
			<% for(int i = 0 ; i < foodhome.size() ; i++ ) { %>
			<div class="food">
			<form method="post" action="<%= projectName %>/baemin?cmd=MenuList-page">
				<input type="hidden" name="fboss" value="<%= foodhome.get(i).getfBoss() %>" />
				<input type="hidden" name="fcategory" value="<%= foodhome.get(i).getfCategory() %>" />
				<input type="hidden" name="fclose" value="<%= foodhome.get(i).getfClose() %>" />
				<input type="hidden" name="fing" value="<%= foodhome.get(i).getfIng() %>" />
				<input type="hidden" name="flocation" value="<%= foodhome.get(i).getfLocation() %>" />
				<input type="hidden" name="fname" value="<%= foodhome.get(i).getfName() %>" />
				<input type="hidden" name="fopen" value="<%= foodhome.get(i).getfOpen() %>" />
				<input type="hidden" name="ftel" value="<%= foodhome.get(i).getfTel() %>" />
				
				<div class="home1">
					<img class="img" src="<%= projectName %>/배달의민족/<%= foodhome.get(i).getfImg()  %>">
				<div class="home2">
					<div class="fName"><%= foodhome.get(i).getfName() %></div>
					<div class="fLocation"><%= foodhome.get(i).getfLocation() %></div>
					<div class="fTel"><%= foodhome.get(i).getfTel() %></div>
					<div class="rCount">리뷰 <span>35</span></div>
				</div>
				</div>
			</form>
			</div>
			<% } %>
		</div>
	</div>
</div>
</body>
</html>