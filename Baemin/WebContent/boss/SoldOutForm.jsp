<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% String projectName = "/Baemin"; %>	

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="<%= projectName %>/css/boss/SoldOutForm.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/js/boss/SoldOutForm.js"></script>

</head>
<body>
	<div class="container">
		<div class="text-center">
			<img alt="메뉴품절관리" src="<%= projectName %>/배달의민족/품절관리.png" />
		</div>


		<div class="row">

			<div class="col-sm-4"></div>

			<div class="panel panel-default col-sm-4">
				<div class="panel-body">
					<form action="<%= projectName %>/baemin?cmd=boss-sold-db" method="post">
					<div class="select">
						<input type="hidden" name="menuNum" value="2"/>
						<select>
							<option>쌀통닭-신천점</option>
							<option>굽네치킨-가락점</option>
						</select>
					</div>
					<div class="check">
						<input type="checkbox" />품절유무
					</div>
					
					<div class="insertBtn">
						<input type="button" id="soldBtn" value="적용">
					</div>
					</form>
				</div>
			</div>

			<div class="col-sm-4"></div>

		</div>
	</div>

</body>
</html>





