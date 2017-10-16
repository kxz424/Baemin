<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 업소검색 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/FoodHomeForm.css" />

</head>
<body>
	<jsp:include page="MainBar.jsp"></jsp:include>
	
	<jsp:include page="MenuBar.jsp"></jsp:include>

<div id="foodhome">
	<div id="foodhome-content">
		<div id="sort">
		<select>
			<option>5줄 보기</option>
			<option>10줄 보기</option>
			<option>15줄 보기</option>
		</select>
		</div>
		<div id="test">
		<img class="test" src="<%= projectName %>/배달의민족/가입1.png">
		<img class="test" src="<%= projectName %>/배달의민족/가입1.png">
		<img class="test" src="<%= projectName %>/배달의민족/가입1.png">
		<img class="test" src="<%= projectName %>/배달의민족/가입1.png">
		</div>
	</div>
</div>
</body>
</html>