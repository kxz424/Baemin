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
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

div {
	padding: 30px 0
}

form {
	position: relative;
	width: 300px;
	margin: 0 auto;
}
.d1 {
	display: inline-block;
}
.d1 input {
	width: 100%;
	height: 42px;
	padding-left: 10px;
	border: 2px solid #2ac1bc;
	border-radius: 5px;
	outline: none;
	background: #FFFFFF;
	color: #9E9C9C;
}

.d1 button {
	position: absolute;
	top: 0;
	right: 0px;
	width: 42px;
	height: 42px;
	border: none;
	background: #2ac1bc;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
}

.d1 button:before {
	content: "\f002";
	font-family: FontAwesome;
	font-size: 16px;
	color: #F9F0DA;
}
</style>
</head>
<body>
	<p id="quickmenu">
		<a href="<%=projectName%>/baemin?cmd=login-page">로그인</a> ㅣ <a
			href="<%=projectName%>/baemin?cmd=join-page">회원가입</a> ㅣ <a
			href="<%=projectName%>/baemin?cmd=boss-main">사장님</a>
	</p>

	<div class="center">
		<h3>
			<a href="<%=projectName%>/baemin?cmd=main-page">
			<img id="logo" src="/Baemin/배달의민족/로고.jpg" /></a><br /> 
<!-- 				<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요"> -->
			<!-- 		<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요"> -->
			<div class="d1">
				<form>
					<input type="text" placeholder="검색어 입력" value="위치를 지정하세요">
					<button type="submit"></button>
				</form>
			</div>
			<div class="d1">
				<form>
					<input type="text" placeholder="검색어 입력" value="업소명을 검색하세요">
					<button type="submit"></button>
				</form>
			</div>
		</h3>
	</div>
</body>
</html>