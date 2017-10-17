<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 배달/결제 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/OrderForm.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/member/OrderForm.js"></script>
</head>
<body>

<div class="container">

	<form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=main-page">

		<div class="header">
			<h1>배달 / 결제 정보</h1><hr/>
		</div>
		
		<div class="row">
		
			<div class="col-sm-8 main1">
				
				<h3>01. 배달정보</h3><hr/>
		      
				<label>휴대폰</label>
				<input type="tel" placeholder="01012345678" id="tel"><br/>
		      
				<label>주소</label>
				<select><option value=" ">석촌동</option></select>
				<input type="text" placeholder="나머지 주소를 입력해주세요." id="addr"><br/>
		      
				<label>요청사항</label>
				<input type="text" placeholder="예) 벨 누르시기 전에 전화해주세요." id="comment"><br/>
      
			</div>
   
   			<div class="col-sm-4 main2">
      
      			<h3>02. 결제</h3>
      
				<div class="price1">
      
	         		<div class="price2">
	            		<label class="label2">양파뿌린닭</label><label class="label1">19,900원</label><br/>
	           			<label class="label2">가격:</label><label class="label3">19,900원x1</label>
	         		</div>
	      
	         		<div class="price2">
	            		<label class="label2">양파뿌린닭</label><label class="label1">19,900원</label><br/>
	            		<label class="label2">가격:</label><label class="label3">19,900원x1</label>
	         		</div>
      
      			</div>
      
      			<div class="price3">

					<label class="label6">수량</label><label class="label5">2개</label><br/>
         			<label class="label6">총상품금액</label><label class="label4">39,800원</label>

      			</div>
      
				<div class="price4">

					<label class="label7">최종 결제 금액</label><br/>
			        <label class="label8">39,800원</label>

     			</div>
      
      			<center><input type="button" value="결제하기" class="payment" /></center><br/>

			</div>
  		 
		</div>
		
	</form>	
	
</div>


</body>
</html>