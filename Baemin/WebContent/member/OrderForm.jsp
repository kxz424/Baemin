<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<%
	String[] menuName = request.getParameterValues("menuName");
	String[] menuCnt = request.getParameterValues("menuCnt");
	String[] menuPrice = request.getParameterValues("menuPrice");
	
	int totalCnt = 0;
	
	for(int j = 0; j < menuCnt.length; j++){
		System.out.println(menuName[j] + menuCnt[j] + menuPrice[j]);
		totalCnt += Integer.parseInt(menuCnt[j]);
	}
	
	String oMoney = request.getParameter("oMoney");
	
	Member m = (Member)session.getAttribute("user");
	String fboss = request.getParameter("fboss");
	
%>

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

	<form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=order-db">
		<input type="text" name="fboss" value="<%= fboss %>">
		<div class="header">
			<h1>배달 / 결제 정보</h1><hr/>
		</div>
		
		<div class="row">
		
			<div class="col-sm-8 main1">
				
				<h3>01. 배달정보</h3><hr/>
		      
				<label>휴대폰</label>
				<input name="oTel"type="tel" placeholder="01012345678" id="tel" value="<%= m.getmTel() %>"><br/>
		      
				<label>주소</label>
				<select><option value=" ">석촌동</option></select>
				<input name="oAddress" type="text" placeholder="나머지 주소를 입력해주세요." id="addr"><br/>
		      
				<label>요청사항</label>
				<input name="oRequest"type="text" placeholder="예) 벨 누르시기 전에 전화해주세요." id="comment"><br/>
      		
			</div>
   
   			<div class="col-sm-4 main2">
      
      			<h3>02. 결제</h3>
      
				<div class="price1">
      				
      			<% for(int i = 0; i < menuCnt.length; i++){ %>
	         		<div class="price2">
	            		<label class="label2"><%= menuName[i] %></label><label class="label1"><%= menuPrice[i] %>원</label><br/>
	           			<label class="label2">가격:</label><label class="label3"><%= menuPrice[i] %>원x<%= menuCnt[i] %></label>
	           			<input type="hidden" name="oMenuName" value="<%= menuName[i] %>" />
	           			<input type="hidden" name="oMenuCnt" value="<%= menuCnt[i] %>" />
	         		</div>
	      		<% } %>
      
      			</div>
      
      			<div class="price3">

					<label class="label6">수량</label><label class="label5"><%= totalCnt %>개</label><br/>
         			<label class="label6">총상품금액</label><label class="label4"><%= oMoney %>원</label>
         			

      			</div>
      
				<div class="price4">

					<label class="label7">최종 결제 금액</label><br/>
			        <label class="label8"><%= oMoney %>원</label>
					<input type="hidden" name="oMoney" value="<%= oMoney %>" />
     			</div>
      
      			<center><input type="button" value="결제하기" class="payment" /></center><br/>

			</div>
  		 
		</div>
		
	</form>	
	
</div>


</body>
</html>