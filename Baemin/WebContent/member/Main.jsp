<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 메인 </title>
</head>
<body>
	<p> 
		<a href="<%= projectName %>/baemin?cmd=login-page">로그인</a> ㅣ 
		<a href="<%= projectName %>/baemin?cmd=join-page">회원가입</a> ㅣ 
		<a href="<%= projectName %>/baemin?cmd=boss-main">사장님</a> 
	</p>
	
	<img src="../배달의민족/로고.jpg" /> <br/>
	<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요">
<!-- 	<img src="../배달의민족/검색.jpg" /> -->
	<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요">
</body>
</html>