<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 업소검색 </title>
<style type="text/css">
	#sort {
		text-align: right;
		margin : 2%;
	}
	#foodhome {
		width : 100%;
/*  		border : 3px solid black;  */
	}
	#foodhome-content {
/*  		border : 3px solid red;  */
		width : 70%;
		margin: auto;
	}
	#test {
		margin : 2% 4%;
		width : 90%;
/* 		border : 3px solid yellow; */
	}
	.test {
		width : 30%;
		height : 30%;
/* 		border : 3px solid blue; */
/*  		margin : auto;  */
	}
</style>
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
		<img class="test" src="../배달의민족/가입1.png">
		<img class="test" src="../배달의민족/가입1.png">
		<img class="test" src="../배달의민족/가입1.png">
		<img class="test" src="../배달의민족/가입1.png">
		</div>
	</div>
</div>
</body>
</html>