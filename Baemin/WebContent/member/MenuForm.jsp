<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>



<style type="text/css">

</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	
<script type="text/javascript" src="MenuForm.js"></script>


</head>
<body>

	<!-- 메뉴 부분 -->
	<div id="menu">
		<!-- 	<span class="caret"></span> -->
		<ul class="nav nav-tabs nav-justified">
			<li class="active lf-brd"><a href="#">메뉴</a></li>
			<li><a href="#review">리뷰</a></li>
		</ul>
		<div class="box no-tp-brd">
			<section class="menu-sect panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading collapsed">
						<h3 class="panel-title">
							<!-- 								<ul class="nav nav-pills nav-justified"> -->
							<!-- 									<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> -->
							<!-- 									    메인메뉴 <span class="caret"></span> -->
							<!-- 									</a></li> -->
							<!-- 								</ul> -->
							<a class="accordion-toggle" data-toggle="collapse"
								href="#collapseRecMenu">추천메뉴</a><span class="caret"></span>
						</h3>
					</div>
					<div class="panel-collapse in" style="height: auto;">
						<div class="panel-body">
							<div class="row rec-menu">
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="쌀통닭" src="../배달의민족/메뉴_쌀통닭.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">쌀통닭</span> <strong
													class="text-ellipsis pull-right">15,900원</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="쌀통닭순살" src="../배달의민족/메뉴_쌀통닭_순살.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">쌀통닭순살</span> <strong
													class="text-ellipsis pull-right">16,900원</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="불닭발" src="../배달의민족/메뉴_불닭발.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">불닭발</span> <strong
													class="text-ellipsis pull-right">16,900원</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="양파뿌린닭" src="../배달의민족/메뉴_양파뿌린닭.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">양파뿌린닭</span> <strong
													class="text-ellipsis pull-right">19,900원</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="똥집세트" src="../배달의민족/메뉴_똥집세트.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">똥집세트</span> <strong
													class="text-ellipsis pull-right">22,900원</strong>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
									<div class="thumbnail shop-menu-panel">
										<img alt="옛날통닭두마리" src="../배달의민족/메뉴_옛날통닭두마리.png">
										<div class="caption">
											<div class="small">
												<span class="text-ellipsis">옛날통닭두마리</span> <strong
													class="text-ellipsis pull-right">19,900원</strong>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>




</body>
</html>