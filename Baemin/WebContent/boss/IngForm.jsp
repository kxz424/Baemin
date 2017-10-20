<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% String projectName = "/Baemin"; %>	
	
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>임시 운영 중지</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/boss/IngForm.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/js/boss/IngForm.js"></script>

</head>
<body>
	<div class="container">
		<div class="text-center">
			<a href="<%= projectName %>/baemin?cmd=boss-main"><img id="bosslogo1" src="<%= projectName %>/배달의민족/사장님사이트.jpg"></a>
			<img id="bosslogo2" alt="메뉴등록관리" src="<%= projectName %>/배달의민족/운영중지.png" />
		</div>


		<div class="row">
		
		<div class="col-sm-3"></div>
		
		<div class="panel panel-default col-sm-6">
			<div class="panel-body">
				<form action="<%= projectName %>/baemin?cmd=boss-ing-db" method="post">
					<div class="select">
						<select name="FoodHome">
							<option>쌀통닭-신천점</option>
							<option>굽네치킨-가락점</option>
						</select>
					</div>
				
					<div class="check">
						<input type="hidden" name="chk" value="">
						<input type="checkbox" name="fIng" id="ing"/> <label for="ing" style="font-weight: 100">운영중지</label> 
					</div>
					<input type="button" id="ingBtn" value="적용"/>
				</form>
				
			</div> 
		</div>
		
		<div class="col-sm-4"></div>
		
	</div>
	</div>

</body>
</html>





