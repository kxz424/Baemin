<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 메인 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/Main.css" />
</head>
<body>
	<jsp:include page="MainBar.jsp"></jsp:include>
	<div class="center"><h3>
	<div id="c">
		<div class="cate">
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=chicken"> 
				<img class="category" src="/Baemin/배달의민족/치킨.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=Chinese"> 
				<img class="category" src="/Baemin/배달의민족/중국집.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=fastfood"> 
				<img class="category" src="/Baemin/배달의민족/패스트푸드.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=pizza"> 
				<img class="category" src="/Baemin/배달의민족/피자.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=korean"> 
				<img class="category" src="/Baemin/배달의민족/한식,분식.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=Japanese"> 
				<img class="category" src="/Baemin/배달의민족/돈까스,회,일식.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=pig"> 
				<img class="category" src="/Baemin/배달의민족/족발,보쌈.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=dosirak"> 
				<img class="category" src="/Baemin/배달의민족/도시락.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=night"> 
				<img class="category" src="/Baemin/배달의민족/야식.png" /> </a>
			<a href="<%= projectName %>/baemin?cmd=cate-search&cate=jjim"> 
				<img class="category" src="/Baemin/배달의민족/찜,탕.png" /> </a>
		</div>
	</div>
	</h3></div>
</body>
</html>