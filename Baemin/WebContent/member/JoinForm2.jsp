<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 일반 회원가입2 </title>
<style type="text/css">
/* @charset "UTF-8"; */

.center{
 	width : 450px; 
}
/* step1 이미지 */
	#step1 {
		width : 450px;
		margin : auto;
	}
/* 	ul 리스트 */

	b {
		color : #20B2AA;
	}
	p {
		display: inline-block;
		margin : 0px;
	}
	#title {
		font-weight: bold;
		font-size : 17px;
	}
	#question {
		float : right;
		font-size : 13px;
		text-decoration: underline;
		color : DarkGray;
		line-height: 3.0;
	}
	input {
		width : 440px;
		height : 50px;
		margin : 8px 0;
	}
	.in {
		text-indent: 10px;
		color: SlateGray;
 		border: 1px solid lightGray;
  		border-radius: 3px;
	}
	#btn {
		background-color : #20B2AA;
		font-size : 20px;
		text-align: center;
		color : white;
		border : 0px;
		
	}
	
	
	
	
	
	
	li {
		
		font-size : 13px;
		color : #666666;
	}
	
	
	
	.cau{
		width: 440px;
		height: 150px;
		background-color: #f5f5f5;

	}
	
	
	.caution{
		vertical-align: middle;
		width: 390px;
		
	}
	
	
	
	
	ul {
		list-style:none; 
		padding-left:0px;
	}
	
	span {
		font-size: 15px;
		margin-left: 9px;
		color: #999999;
	}
	
	p {
		font-size: 15px;
		color: #999999;
	}
	
	.cen {
		width: 30em;
 		margin : auto; 
	}
	
	
</style>

</head>
<body>

<div class="cen">
	<div class="center">
		<img id="step1" src="../배달의민족/가입2.png">

		<p>아래 정보를 추가 입력해야 회원가입이 완료됩니다.</p>
		
		<h3>휴대폰 번호<span>배달 시 정확한 주문정보가 필요합니다.</span></h3>
		
		<h3>생년월일<span>회원가입은 만 14세 이상 고객만 가능합니다.</span></h3>
		
		<button type="button" >주의사항 안내	</button> <br/>
		<div class="cau">
			<div class="caution">
				<ul>
					<li>1. 배달의민족 서비스는 만 14세 미만의 아동의 회원가입을 제한하고 있습니다. </li>
					<li>2. 정보통신망 이용촉진 및 정보보호 등에 관한 법률에는 만 14세미만 아동의 개인정보 수집 시 법정대리의 동의를 받도록 규정하고 있으며, 생년월일을 허위로 기재하여 법정대리인의 동의없이 회원가입을 하는 경우 회원탈퇴 또는 서비스 이용이 제한 될 수 있음을 안내해 드립니다.</li>
				</ul>
			</div>
		</div>
		
		 
<!-- 		<p id="title"> 배달의민족 가입하기</p><p id="question"> 이미 배민 ID가 있으세요? </p> <br/> -->
		
<!-- 		<input class="in" type="email" value="배민ID(이메일)" /> <br/> -->
<!-- 		<input class="in" type="text" value="비밀번호 (8~20자)" /> <br/> -->
<!-- 		<input class="in" type="text" value="비밀번호 재입력 (8~20지)" /> <br/> -->
		
<!-- 		<input id="btn" type="button" value="다음" />  -->
	</div>
</div>

</body>
</html>