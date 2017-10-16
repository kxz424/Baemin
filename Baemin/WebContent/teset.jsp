<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>http://www.blueb.co.kr</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style>
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

/* .d1 { */
/* 	background: #A3D0C3; */
/* } */

.d1 input {
	width: 100%;
	height: 42px;
	padding-left: 10px;
	border: 2px solid #7BA7AB;
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
	background: #7BA7AB;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
}

.d1 button:before {
	content: "\f002";
	font-family: FontAwesome;
	font-size: 16px;
	color: #F9F0DA;
}

.d2 {
	background: #DABB52;
}

.d2 input, .d2 button {
	border: none;
	outline: none;
	border-radius: 3px;
}

.d2 input {
	width: 100%;
	height: 42px;
	background: #F9F0DA;
	padding-left: 15px;
}

.d2 button {
	height: 26px;
	width: 26px;
	position: absolute;
	top: 8px;
	right: 8px;
	background: #F15B42;
	cursor: pointer;
}

.d2 button:before {
	content: "\f105";
	font-family: FontAwesome;
	color: #F9F0DA;
	font-size: 20px;
	font-weight: bold;
}

.d3 {
	background: #F9F0DA;
}

.d3 form {
	background: #A3D0C3;
}

.d3 input, .d3 button {
	border: none;
	outline: none;
	background: transparent;
}

.d3 input {
	width: 100%;
	height: 42px;
	padding-left: 15px;
}

.d3 button {
	height: 42px;
	width: 42px;
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
}

.d3 button:before {
	content: "\f002";
	font-family: FontAwesome;
	font-size: 16px;
	color: #F9F0DA;
}

</style>
</head>
<body>

	<div class="d1">
		<form>
			<input type="text" placeholder="검색어 입력" value="위치지정">
			<button type="submit"></button>
		</form>
	</div>
	<div class="d2">
		<form>
			<input type="text" placeholder="검색어 입력">
			<button type="submit"></button>
		</form>
	</div>
	<div class="d3">
		<form>
			<input type="text" placeholder="검색어 입력">
			<button type="submit"></button>
		</form>
	</div>
	

</body>
</html>
