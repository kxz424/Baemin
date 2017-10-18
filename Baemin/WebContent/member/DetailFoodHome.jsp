<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String projectName = "/Baemin"; %>    
    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="<%= projectName %>/css/member/DetailFoodHome.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/js/member/DetailFoodHome.js"></script>

<script type="text/javascript">

</script>


</head>
<body>
<div class="wrap" style="min-height: 405px;">
	<div class="container">
 		<section class="shop-info">
			<ol class="breadcrumb">
				<li><a href="<%= projectName %>/baemin?cmd=main-page">홈</a></li>
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
					
					<section class="cart box">
						<h2 class="bold">장바구니</h2><hr/>
						
						
							<div class="login hidden-xs hidden-sm">
	<!-- 							<p class="notice small text-center">바로결제를 사용하시려면<br/>로그인을 해주세요.</p> -->
								
								<form id="cart" method="post" action="<%= projectName %>/baemin?cmd=order-page" class="form-inline">
								
<!-- 									<div class="form-group"> -->
<!-- 										<div class="cartMenu"> -->
<!-- 											<label name="menuName">양파뿌린닭</label> -->
<!-- 											<input type="text" name="menuCnt" value="1"/> -->
<!-- 											<label name="menuPrice">19,900원</label> -->
<!-- 										</div> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-group"> -->
<!-- 										<div class="cartMenu"> -->
<!-- 											<label class="menuName">똥집세트</label> -->
<!-- 											<input type="text" name="menuCnt" value="1"/> -->
<!-- 											<label name="menuPrice">19,900원</label> -->
<!-- 										</div> -->
<!-- 									</div> -->
									
									<div>
										<div class="form-group">
											<label><h4>주문합계금액</h4></label>
											<label name="oMoney" class="text-right">19900원</label>
										</div>
									</div>
								
								</form>
								
								<button type="button" class="btn btn-warning btn-lg btn-block" id="order">
									<span class="btn-cart-login">주문하기</span>
								</button>
							</div>
						
						
						
					</section>
				</div>
				
				
				
			</div>
			
		</section>
		
	</div>
</div>



</body>
</html>