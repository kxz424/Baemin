<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 주문내역 </title>

<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/OrderListForm.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/member/OrderListForm.js"></script>

</head>
<body>

<form>	
	<div class="header">
		<h2>주문내역</h2>
	</div>

	<table>
	
		<tr>
			<td class="col1 table-header table-header-color">주문일</td><td class="col2 table-header table-header-color">주소/전화번호/요청사항</td>
		</tr>
		
		
		
		<tr>
			<td class="table-first line-bottom2"><label class="label2">날짜</label></td><td class="line-left line-bottom-dotted"><label class="table-second">주소</label></td>
			
		</tr>
		
		<tr >
			<td rowspan="2" class="col1 table-header line-bottom" >결제금액: <label class="label1">가격</label><label class="label2">원</label></td><td class="line-left line-bottom-dotted"><label class="table-second">전화번호</label></td>
		</tr>
		
		<tr>
			<td class="line-bottom line-left"><label class="table-second">요청사항</label></td>
		</tr>
		
		
		
		
		
	</table>

</form>

</body>
</html>