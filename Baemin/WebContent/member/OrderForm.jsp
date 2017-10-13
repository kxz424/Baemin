<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 배달/결제 </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style type="text/css">

	hr { border: solid 1px; color: #BDBDBD;}
	.container { width: 768px;}
	.main1 label{ font-size: 13px; width: 100;}
	#tel { width: 350px; height: 40px; padding: 5px; margin-bottom: 3px;}
	#addr { width: 250px; height: 40px; padding: 5px; margin-bottom: 3px;}
	#comment { width: 350px; height: 40px; padding: 5px;}
	
	.main1 select{ width: 90px; height: 38px; margin-right: 6px; }
	
	::-webkit-input-placeholder { 
    color: #9e9e9e;
    font-size: 12px;
	}
	
	.main2 input{ width: 230px; height: 40px;  
				background-color: #FF6C00; color: #FFFFFF; 
				font-size: 16px; border:0; outline:0; cursor: pointer;}


	.price1 {width: 230px ; border: 1px solid;}
	.price2 {background-color: #F4F2EE; border-bottom:1px dotted gray;}
	.price2 label {width: 110px;}
	.label1 {font-size: 14px; color: #000000; text-align: right; padding:4px;}
	.label2 {font-size: 11px; padding:4px;}
	.label3 {font-size: 11px; text-align: right; padding:4px;}
	
	
	.price3 {width: 230px ; border: 1px solid; background-color: #F4F2EE;}
	.price3 label {width: 110px;}
	.label4 {font-size: 14px; color: #FF2424;  text-align: right; padding:4px;}
	.label5 {font-size: 11px; text-align: right; padding:4px;}
	.label6 {font-size: 11px; padding:4px;}
	
	
	.price4 {width: 230px ; border: 1px solid; background-color: #F4F2EE; text-align: right;}
	.price4 label {width: 230px;}
	.label7 {font-size: 10px; padding:4px;}
	.label8 {font-size: 20px; color: #FF6C00; padding:3px; }
	
	 
	
</style>


<script type="text/javascript">

</script>


</head>
<body>
<div class="container">

<div class="header"><h1>배달 / 결제 정보</h1><hr/></div>


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

			<label class="label6">수량</label><label class="label5">19,900원</label><br/>
			<label class="label6">총상품금액</label><label class="label4">39,800원</label>

		</div>
		
		
		<div class="price4">

			<label class="label7">최종 결제 금액</label><br/>
			<label class="label8">39,800원</label>

		</div>
		

		<center><input type="button" value="결제하기"/></center><br/>
	</div>
	
</div>

</div>


</body>
</html>