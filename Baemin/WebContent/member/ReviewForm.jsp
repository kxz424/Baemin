<%@page import="java.util.List"%>
<%@page import="model.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%> 
 	
<%  //웹브라우저가 게시글 목록을 캐싱할 경우 새로운 글이 추가되더라도 새글이 목록에 안 보일 수 있기 때문에 설정
	response.setHeader("Pragma","No-cache");		// HTTP 1.0 version
	response.setHeader("Cache-Control","no-cache");	// HTTP 1.1 version
	response.setHeader("Cache-Control","no-store"); // 일부 파이어폭스 버스 관련
	response.setDateHeader("Expires", 1L);			// 현재 시간 이전으로 만료일을 지정함으로써 응답결과가 캐쉬되지 않도록 설정
%>
 	
<% String projectName = "/Baemin"; %>  	

<%
	List<Review> rlist = (List<Review>) request.getAttribute("reviewlist");
%>
 	
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>

<link rel="stylesheet" href="<%= projectName %>/css/member/ReviewForm.css"/>


<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/js/member/ReviewForm.js"></script>

</head>
<body>

	<!-- 메뉴 부분 -->
	<div id="review">
		<!-- 	<span class="caret"></span> -->
		<ul class="nav nav-tabs nav-justified">
			<li><a href="#">메뉴</a></li>
			<li class="active lf-brd"><a href="#review">리뷰</a></li>
		</ul>
		
		<div class="box no-tp-brd">
			<section class="review-sect">
				<section class="view-review">
				<% if(rlist.isEmpty()){ %>
					<h3>등록된 리뷰가 존재하지 않습니다.</h3>
				<% }else {%>
					<% for(Review r : rlist){ %>
				
						<div class="media small">
							<a class="pull-left"><span class="inner-brd"><img
									class="media-object" src="<%= projectName %>/배달의민족/ㄴ치킨.jpg" /></span></a>
							<div class="media-body">
								<div class="pull-center media-heading">
									<strong class="nick"> <span><%=r.getrMember() %></span>
									</strong> <em>|</em> <span><input type="datetime"
										value="<%=r.getrDate() %>" /></span>
								</div>
								<p id="Review_Cont1"><%=r.getrContent() %></p>
							</div>
						</div>
					
					<%} %>
				<%} %>
					
<!-- 					<div class="media small"> -->
<!-- 						<a class="pull-left"><span class="inner-brd"><img -->
<%-- 								class="media-object" src="<%= projectName %>/배달의민족/ㄴ치킨.jpg" /></span></a> --%>
<!-- 						<div class="media-body"> -->
<!-- 							<div class="pull-center media-heading"> -->
<!-- 								<strong class="nick"> <span>jongsang</span> -->
<!-- 								</strong> <em>|</em> <span><input type="datetime" -->
<!-- 									value="2017-10-11" /></span> -->
<!-- 							</div> -->
<!-- 							<p id="Review_Cont2">그냥 그래요... 그래도 배달은 빠르네요</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
					
					<form id="frm" class="form-horizontal">
						<label class="control-label">리뷰작성</label>
						<input type="hidden" name="cmd" value="Review-db"/>
						<input type="hidden" name="rMember" value="kxz424@naver.com"/>
						<input type="hidden" name="rFood" value="123-45-67890"/>
						<div class="form-group">
							<div class="col-sm-10">
								<textarea name="rCentent" class="form-control" rows="3"></textarea>
							</div>
							<div class="col-sm-2 bb">
								<input id="revBtn" type="button" class="btn btn-info btn-lg bb" value="등록"/>
							</div>
						</div>
					</form>
				</section>
			</section>
		</div>
	</div>




</body>
</html>