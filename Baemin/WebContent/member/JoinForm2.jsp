<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String projectName = "/Baemin"; 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="model.Member">
	<jsp:setProperty name="member" property="*"></jsp:setProperty>
</jsp:useBean>

<% 
	session.setAttribute("member", member);
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 일반 회원가입2 </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/member/JoinForm2.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/member/JoinForm2.js"></script>
</head>
<body>

<div class="cen">
	<div class="center">
		<form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=join-finish">
		<img id="step1" src="<%= projectName %>/배달의민족/가입2.png">

		<p>아래 정보를 추가 입력해야 회원가입이 완료됩니다.</p>
		
		<h3>휴대폰 번호<span>배달 시 정확한 주문정보가 필요합니다.</span></h3>
		<input class="tel" min="0" max="999" type="number" value=""/><input class="tel" maxlength="4" type="number" value="" /><input class="tel" maxlength="4" type="number" value="" /><br>
		<p id="ptel" class="p"></p>
		
		<h3>생년월일<span>회원가입은 만 14세 이상 고객만 가능합니다.</span></h3>
		
		<input id="birth" name="mBirth" class="year" type="text" placeholder="예:951005" /> <br/>
		<p id="pbirth" class="p"></p>
		
<!-- 		<input  type="button" value="주의사항 안내 ▼"> -->
		<div class="btn-caution">주의사항 안내<span>▼</span></div>

		<div class="cau">
			<div class="caution">
				<ul>
					<li>1. 배달의민족 서비스는 만 14세 미만의 아동의 회원가입을 제한하고 있습니다.<br/><br/>2. 정보통신망 이용촉진 및 정보보호 등에 관한 법률에는 만 14세미만 아동의 개인정보 수집 시 법정대리의 동의를 받도록 규정하고 있으며, 생년월일을 허위로 기재하여 법정대리인의 동의없이 회원가입을 하는 경우 회원탈퇴 또는 서비스 이용이 제한 될 수 있음을 안내해 드립니다.</li>
				</ul>
			</div>
		</div>
		
		<h3>성별(선택)<span>선택하시면 더 많은 혜택을 받아보실 수 있습니다.</span></h3>
		
		
		<ul class="gen">
			<li>
				<input class="gender" type="radio" name="mGender" id="man">
				<label for="man">남성</label>
			</li>
			<li>
				<input class="gender" type="radio" name="mGender" id="woman">
				<label for="woman">여성</label>
			</li>
			<li>
				<input class="gender" type="radio" name="mGender" id="none" checked="checked">
				<label for="none">선택 안 함</label>
			</li>
		</ul>
		
		
		<h3>약관 동의</h3>
		<div class="checkbox">
		<input type="checkbox" id="chk-all"><label for="chk-all">아래 약관에 모두 동의합니다.</label><br/>
		<hr/>
		<input type="checkbox" id="chk1" class="chk"><label for="chk1">이용약관 동의 (필수)</label><br/>
		<input type="checkbox" id="chk2" class="chk"><label for="chk2">전자금융거래 이용약관 동의 (필수)</label><br/>
		<input type="checkbox" id="chk3" class="chk"><label for="chk3">개인정보 수집이용 동의 (필수)</label><br/>
		<input type="checkbox" id="chk4" class="chk"><label for="chk4">개인정보 제 3자 제공 동의 (선택)</label><br/>
		<label class="label1">배달의민족 제휴사에 마케팅정보를 제공합니다.</label><br/>
		<input type="checkbox" id="chk5" class="chk"><label for="chk5">마케팅 정보 메일, SMS 수신 (선택)</label><br/>
		<label class="label1">수신동의 여부 및 자세한 설정은 환경설정에서 확인할 수 있습니다.</label><br/><br/>
		</div>
		
		
		<div>
			<a href="<%= projectName %>/baemin?cmd=main-page"><input type="submit" class="btn btn-cancel" value="취소"></a>
<!-- 			<a href="#open"> -->
			<input id="join" type="button" class="btn btn-finish" value="완료">
<!-- 			</a> -->
		</div>
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