<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Boss" %>

<%
	String projectName = "/Baemin";
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="boss" class="model.Boss">
	<jsp:setProperty name="boss" property="*"></jsp:setProperty>
</jsp:useBean>

<%
	String tel = "";
	for(int i = 1 ; i < 4 ; i++)
		tel += request.getParameter("bTel"+i);
	
	boss.setbTel(tel);
	
	session.setAttribute("boss", boss);
%>
 

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입(업소등록)</title>

<link rel="stylesheet" type="text/css" href="<%=projectName%>/css/boss/BossJoinForm3.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=projectName%>/js/boss/BossJoinForm3.js"></script>
</head>
<body>
	<div>
		<div class="logo">
			<h2>사장님사이트 회원가입</h2>
		</div>

		<div class="div1">
			<label class="label1">약관동의</label> <label class="label2">></label> 
			<label class="label1">업주정보</label> <label class="label1">></label> 
			<label class="label2 label1-color">업소정보</label>
		</div>

		<div class="terms-content">
			<form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=boss-join-db" enctype="multipart/form-data">
				<fieldset>
					<div>
						<ul>
							<li class="li-margin li-select">
								
								<h3>업소정보</h3> <label>업소명</label><br /> 
								<input type="text" placeholder="업소명을 입력해 주세요." name="fName"/><br/><hr/> 
								
								<label>업소 주소</label> <br/> 
								<select name="fLocation1">
									<option>시도</option>
								</select> 
								<select name="fLocation2">
									<option>시구군</option>
								</select> 
								<select name="fLocation3">
									<option>동</option>
								</select><br/><br/> 
								
								<label>업소이미지첨부</label><br/> 
								<input type="file" name="file" /><br/><br/>
								
								
								<label>카테고리</label><br/>
								<select name="fCategory">
									<option value="chicken">치킨</option>
									<option value="Chinese">중국집</option>
									<option value="fastfood">패스트푸드</option>
									<option value="pizza">피자</option>
									<option value="korean">한식,분식</option>
									<option value="Japanese">돈까스,회,일식</option>
									<option value="pig">족발,보쌈</option>
									<option value="dosirak">도시락</option>
									<option value="night">야식</option>
									<option value="jjim">찜,탕</option>
								</select>
								
								
								
							</li>
			

							<li class="li-margin">
								<h3>운영정보</h3> <label>전화번호</label><br/> 
								<input type="text" placeholder="전화번호를 입력해 주세요." name="fTel" />
								<hr/>


								<div class="time">
									<div class="open-time">
										<label>오픈시간</label><br> 
										<select name="fOpen1">
											<%
												for (int i = 0; i <= 23; i++) {
													if (i < 10) {
											%>
											<option>0<%=i%></option>
											<%
												} else {
											%>
											<option><%=i%></option>
											<%
												}
													;
												}
												;
											%>
										</select>

										<lable>:</lable>

										<select name="fOpen2">
											<%
												for (int i = 0; i <= 59; i++) {
													if (i < 10) {
											%>
											<option>0<%=i%></option>
											<%
												} else {
											%>
											<option><%=i%></option>
											<%
												}
													;
												}
												;
											%>
										</select>
									</div>


									<div class="center">
										</br>
										<lable>~</lable>
									</div>

									<div class="close-time">
										<label>마감시간</label></br> 
										<select name="fClose1">
											<%
												for (int i = 0; i <= 23; i++) {
													if (i < 10) {
											%>
											<option>0<%=i%></option>
											<%
												} else {
											%>
											<option><%=i%></option>
											<%
												}
													;
												}
												;
											%>
										</select>

										<lable>:</lable>

										<select name="fClose2">
											<%
												for (int i = 0; i <= 59; i++) {
													if (i < 10) {
											%>
											<option>0<%=i%></option>
											<%
												} else {
											%>
											<option><%=i%></option>
											<%
												}
													;
												}
												;
											%>
										</select>
									</div>
								</div>
							</li>
						</ul>

						<div class="btn-select">
							<a href="#open"><input type="button" class="btn2 btn2-color" value="완료" /></a>
						</div>
						
				</fieldset>
			</form>
		</div>
	</div>


	<div class="white_content" id="open">
		<div>
			<p>가입이 완료되었습니다.</p>
			<a href="#close"><input type="button" class="close" value="닫기" /></a>
		</div>
	</div>

</body>
</html>