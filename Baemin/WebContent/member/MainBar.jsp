<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String projectName = "/Baemin";
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="<%= projectName %>/css/member/MainBar.css" />
<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#selectlocation").focus(function () {
			this.value = "";
		});
		$("#selectfoodhome").focus(function () {
			this.value = "";
		});
		$("#selectlocation").blur(function() {
			this.value = "위치를 지정하세요";
		});
		$("#selectfoodhome").blur(function () {
			this.value = "업소명을 검색하세요";
		});
		
	});
</script>
</head>
<body>
	<p id="quickmenu">

		<a href="<%=projectName%>/baemin?cmd=login-page">로그인</a> ㅣ
		<a href="<%=projectName%>/baemin?cmd=join-first">회원가입</a> ㅣ 
		<a href="<%=projectName%>/baemin?cmd=boss-main">사장님</a>
	</p>

	<div class="center">
		<h3>
			<a href="<%=projectName%>/baemin?cmd=main-page">
			<img id="logo" src="<%= projectName %>/배달의민족/로고.jpg" /></a><br /> 
<!-- 				<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요"> -->
			<!-- 		<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요"> -->
			<div class="d1">
				<form>
					<input id="selectlocation" type="text" value="위치를 지정하세요">
					<button type="submit"></button>
				</form>
			</div>
			<div class="d1">
				<form>
					<input id="selectfoodhome" type="text" value="업소명을 검색하세요">
					<button type="submit"></button>
				</form>
			</div>
		</h3>
	</div>
</body>
</html>