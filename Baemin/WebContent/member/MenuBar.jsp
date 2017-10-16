<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/MenuBar.css" />
<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".c").mouseenter(function () {
			$(this).removeClass('hidden');
			$(this).addClass('visible');
			$("p").show();
		});
		$(".c").mouseleave(function () {
			$(this).removeClass('visible');
			$(this).addClass('hidden');
			$("p").hide();
		});
		
	});
</script>
</head>
<body>
<div class='c hidden'>
	<div id="menubar">
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=chicken">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ치킨.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=Chinese">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ중국집.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=fastfood">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ패스트푸드.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=pizza">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ피자.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=korean">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ한식.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=Japanese">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ돈까스.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=pig">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ족발.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=dosirak">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ도시락.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=night">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ야식.jpg">
	</a>
	<a href="<%= projectName %>/baemin?cmd=cate-search&cate=jjim">
		<img class="menubar" src="<%= projectName %>/배달의민족/ㄴ찜.jpg">
	</a>
	</div>
</div>

<p>

<br/>
<br/>
<br/>




</p>
</body>
</html>