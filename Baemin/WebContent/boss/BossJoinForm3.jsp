<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Boss" %>

<%
	String projectName = "/Baemin";
%>

<%
	
	String bName = request.getParameter("bName");
	String bBirth = request.getParameter("bBirth");
	String bTel = request.getParameter("bTel1") + request.getParameter("bTel2") + request.getParameter("bTel3");
	String bMail = request.getParameter("bMail");
	String bNum = request.getParameter("bNum");
	String bId = request.getParameter("bId");
	String bPassword = request.getParameter("bPassword");
	
	Boss boss = new Boss();
	
	boss.setbBirth(bBirth);
	boss.setbId(bId);
	boss.setbMail(bMail);
	boss.setbName(bName);
	boss.setbNum(bNum);
	boss.setbPassword(bPassword);
	boss.setbTel(bTel);
	
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
			<form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=boss-join3">
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
								<input type="file" value="" class="" />
								
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