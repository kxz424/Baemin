<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
#info{
	border: 1px solid black;
	position: absolute;
  	top: 160px; 
  	left: 70%; 
	width: 266px;
	margin: 0px;
}
.shop-basic-info{
 	border: 1px solid black;
	height: 70px;
	
}
#main{  
	width: 70%;
	margin-left: 15px;
	margin-top: 20px;
	margin-right: 0;
	margin-bottom: 0;
}
dd{
	margin-bottom: 5px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>
<div class="wrap" style="min-height: 405px;">
	<div class="container">
 		<section class="shop-info">
			<ol class="breadcrumb">
				<li><a href="Main.jsp">홈</a></li>
				<li>
					<strong>
						<span>치킨</span>
					</strong>
				</li>
			</ol>
			<div class="shop-basic-info box">
				<div class="of-h">
					<h1 class="pull-left">쌀통닭 신천점</h1>
				</div>
			</div>
			
			<div class="row">
				<div id="main" class="main-info">
					<jsp:include page="MenuForm.jsp" />
					<jsp:include page="ReviewForm.jsp" />

				</div>
				
				<div id="info" class="side-info" >

					<section class="shop-det-info box">
						<h2 class="bold tog">업소상세정보</h2><hr/>
						
						<dl class="sinfo xsmall">
							<dt>운영시간</dt>
							<dd>낮 12:00 ~ 익일 새벽 02:30</dd>
							<dt>전화번호</dt>
							<dd>
								<strong class="text-primary">050-4994-3230</strong>
							</dd>
							<dt>업소소개</dt>
							<dd><div id="intro"><p>쌀통닭 신천점입니다.</p></div></dd>
						</dl>
					</section>
				</div>
				
			</div>
			
		</section>
		
	</div>
</div>



</body>
</html>