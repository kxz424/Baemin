<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 메인 </title>
<style type="text/css">
/* 	카테고리 */
	.category {
		width : 150px;	
		margin : 10px 13px;	
	}
	#c {
		margin : 60px 0;
		width : 100%;
		
	}
	.cate {
		width : 70%;
		margin : auto;
	}
/* 	퀵메뉴 제외 가운데 정렬 */
 	.center{ 
	 	width:100%; 
 	} 
 	.center h3{
 		text-align:center;
 	}
 	
</style>
</head>
<body>
	<jsp:include page="MainBar.jsp"></jsp:include>
	<div class="center"><h3>
	<div id="c">
		<div class="cate">
			<img class="category" src="../배달의민족/치킨.png" />
			<img class="category" src="../배달의민족/중국집.png" />
			<img class="category" src="../배달의민족/패스트푸드.png" />
			<img class="category" src="../배달의민족/피자.png" />
			<img class="category" src="../배달의민족/한식,분식.png" />
			<img class="category" src="../배달의민족/돈까스,회,일식.png" />
			<img class="category" src="../배달의민족/족발,보쌈.png" />
			<img class="category" src="../배달의민족/도시락.png" />
			<img class="category" src="../배달의민족/야식.png" />
			<img class="category" src="../배달의민족/찜,탕.png" />
		</div>
	</div>
	</h3></div>
</body>
</html>