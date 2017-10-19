<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%> 
 	
<% String projectName = "/Baemin"; %>  	
 	
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>

<link rel="stylesheet" href="<%= projectName %>/css/member/ReviewForm.css"/>


<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/js/member/ReviewForm.js"></script>

</head>
<body>

	<!-- 메뉴 부분 -->
	<div id="review">
		<!-- 	<span class="caret"></span> -->
		<ul class="nav nav-tabs nav-justified">
			<li><a href="#">메뉴</a></li>
			<li class="active lf-brd"><a href="#review">리뷰</a></li>
		</ul>
		
		<div class="box no-tp-brd">
			<section class="review-sect">
				<section class="view-review">
					<div class="media small">
						<a class="pull-left"><span class="inner-brd"><img
								class="media-object" src="<%= projectName %>/배달의민족/ㄴ치킨.jpg" /></span></a>
						<div class="media-body">
							<div class="pull-center media-heading">
								<strong class="nick"> <span>알려드립니다</span>
								</strong> <em>|</em> <span><input type="datetime"
									value="2017-10-12" /></span>
							</div>
							<p id="Review_Cont1">너무맛있어요!!!!</p>
						</div>
					</div>
					<div class="media small">
						<a class="pull-left"><span class="inner-brd"><img
								class="media-object" src="<%= projectName %>/배달의민족/ㄴ치킨.jpg" /></span></a>
						<div class="media-body">
							<div class="pull-center media-heading">
								<strong class="nick"> <span>jongsang</span>
								</strong> <em>|</em> <span><input type="datetime"
									value="2017-10-11" /></span>
							</div>
							<p id="Review_Cont2">그냥 그래요... 그래도 배달은 빠르네요</p>
						</div>
					</div>
					
					<form id="frm" class="form-horizontal" method="post">
						<label class="control-label">리뷰작성</label>
						<input type="hidden" name="id" value="kxz424"/>
						<div class="form-group">
							<div class="col-sm-10">
								<textarea name="review" class="form-control" rows="3"></textarea>
							</div>
							<div class="col-sm-2 bb">
								<input id="revBtn" type="button" class="btn btn-info btn-lg bb" value="등록"/>
							</div>
						</div>
					</form>
				</section>
			</section>
		</div>
	</div>




</body>
</html>