<%@page import="model.FoodHome"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/Baemin"; 
    	List<FoodHome> foodhome = (List<FoodHome>)request.getAttribute("foodhome");
    	
    %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 업소검색 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/FoodHomeForm.css" />

</head>
<body>
	<jsp:include page="MainBar.jsp"></jsp:include>
	
	<jsp:include page="MenuBar.jsp"></jsp:include>
	
	<jsp:include page="FoodHome.jsp"></jsp:include>

</body>
</html>