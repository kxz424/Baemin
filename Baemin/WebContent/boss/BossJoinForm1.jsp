<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입(약관동의) </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/boss/BossJoinForm1.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/boss/BossJoinForm1.js"></script>
</head>
<body>

<div>

	<div class="logo">
		<h2>사장님사이트 회원가입</h2>
	</div>
	
	<div class= "div1">
		<label class= "label1 label1-color">약관동의</label>
		<label class= "label2 label1-color">></label>
		<label class= "label1">업주정보</label>
		<label class= "label1">></label>
		<label class= "label2">업소정보</label>
	</div>

	<div class="terms-content">
    	<form id="joinTerms" method="post" action="">
      		<fieldset>
      			<div class="terms-all">
          		배달의민족 사장님사이트 이용약관,<br>
          		050서비스 이용약관, 개인정보 수집 및<br>
          		이용, 광고운영정책, 광고성 정보 수신에<br>
	          	<label class="label-title1" ><strong>모두</strong> 동의합니다.</label>
           		<input type="checkbox" id="" class="">
           		<hr/>
        		</div>

        		<ul class="terms-list">
          			<li>
          				<div class="terms-check">
          					<label class="label-title" >배달의민족 사장님사이트 이용약관 (필수)</label>
              				<label class="label-agree">동의</label>
              				<input type="checkbox" id="" class="">
            			</div>
            
           				<div class="terms-box">
             				<div class="terms_content" style="opacity: 1;">
         	 					<div class="terms terms_1-1" >
   									<strong>제 1 조 (목적)</strong><br>
    								이 약관은 ㈜우아한형제들(이하 “회사”라고 함)이 제공하는 배달의민족 사장님사이트 (http://ceo.baemin.com)의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
    								[부칙]<br>
    								1. 본 약관은 2015 년 12 월 01 일부터 시행됩니다.<br>
  								</div>
  							</div>
  						</div>
         			</li>
         	  
         			<li>
         				<div class="terms-check">
              				<label class="label-title">050서비스 이용약관 (필수)</label>
               				<label class="label-agree">동의</label>
              				<input type="checkbox" id="" class="">
             			</div>
						
						<div class="terms-box">
            				<div class="terms_content" style="opacity: 1;">
 			 					<div class="terms terms_2-1">
		    					<b>제1장 총칙</b><br>
		    					<strong>제1조 (약관의 적용목적)</strong><br>
		    					본 약관은 ㈜우아한형제들(이하 “회사”라고 함)이 “회원”에게 제공하는 우아한통화 서비스의 제공과 관련하여 “회사”와 “회원”의 권리 및 의무를 정하는 것을 목적으로 합니다. <br><br>
		    					<strong>제2조 (약관의 적용)</strong><br>
		    					“회사”가 제공하는 우아한통화 서비스에 관하여는 이 약관을 적용하고, 이 약관에 명시되지 아니한 사항에 대하여는 관계법령 및 개별 망 사업자의 이용약관의 내용을 적용합니다. 단, 개별 망 사업자 가 직접 “회원”에게 제공하게 되는 서비스와 관련하여 이 약관의 내용이 개별 망 사업자의 이용약관 의 내용과 다를 경우에는, 개별 망 사업자의 이용약관의 내용이 우선하여 적용됩니다.<br><br>
		    					[부칙]<br>
		    					1. (시행일) 이 약관은 2015년 12월 01일부터 시행합니다.<br>
		  						</div>
							</div>
            			</div>
          			</li>
          			
          			<li>
            			<div class="terms-check">
              				<label class="label-title">개인정보 수집 및 이용 (필수)</label>
               				<label class="label-agree">동의</label>
							<input type="checkbox" id="" class="">
            			</div>
            			
           		 		<div class="terms-box">
              				<div class="terms_content" style="opacity: 1;">
  								<div class="terms terms_4-1">
								(주)우아한형제들(이하 ‘회사’라 한다)은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법령에 따라 이용자의 개인정보를 보호하고, 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립합니다.<br>
								개인정보처리방침은 이용자가 언제나 쉽게 열람할 수 있도록 서비스 초기화면을 통해 공개하고 있으며, 개인정보 관련법령, 지침, 고시 또는 배달의민족 사장님사이트 정책의 변경에 따라 달라질 수 있습니다.<br><br>
								<strong>1. 개인정보의 수집·이용</strong><br>
								회사는 다음과 같이 이용자의 개인정보를 수집합니다. 처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 활용되지 않으며, 수집·이용목적이 변경되는 경우에는 개인정보보호법에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.<br><br>
								(1) 회원 정보의 수집·이용목적, 수집항목, 보유·이용기간은 아래와 같습니다.<br><br>
								<br>
    
								<strong>2. 개인정보의 공유 및 제공</strong><br>
								<p>회사는 이용자들의 개인정보를 수집 및 이용목적의 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>
								① 이용자가 사전에 동의 한 경우<br>
								② 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</p><br><br>
								    
								<strong>3. 개인정보의 처리위탁</strong><br>
								(1) 회사는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.<br>
								(2) 회사의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다<br><br>
  								</div>
							</div>
            			</div>
          			</li>
          			
         			 <li>
            			<div class="terms-check">
              				<label class="label-title">광고운영정책 (필수)</label>
               				<label class="label-agree">동의</label>
							<input type="checkbox" id="" class="">
            			</div>
            			
            			<div class="terms-box">
              				<div class="terms terms_3-1" >
							    <strong>■ 광고주 가입 및 정보변경</strong><br>
							    1. 광고주 가입<br>
							    ① 배달의민족 광고서비스를 이용하고자 하는 업주님은 배달의민족 광고 및 바로결제 서비스 신청서 작성 및 약관 동의 절차 등에 따라 신규가입 후 자유롭게 광고 서비스를 이용하실 수 있습니다. 광고주는 1) 신규가입을 완료한 ‘일반업주’와 2) 광고신청 후 회사의 승인을 거쳐 광고소재가 게재 된 상태의 ‘광고업주’로 구분합니다.<br>
							    ② 광고주 가입은 광고주 본인의 업소를 광고하기 위한 목적으로만 신청하셔야 하고, 타인 명의의 가입 신청 등의 경우는 배달의민족 광고 서비스의 이용이 제한되거나 거부될 수 있습니다.<br>
							    ③ 회사는 광고서비스를 제공하기 위하여 관련 법령이 규정한 절차와 방법에 따라 광고주로부터 필요한 1) 신원정보(업소정보 포함)와 2) 상품 정보 등을 수집하며, 광고주는 이에 적극 협력해야 합니다.<br>
							    ④ 광고주는 가입 신청 시 사업자등록증 등 회사가 요청하는 증빙서류를 필수로 제출하여야 하며 식별이 불가하거나 정보가 부정확할 경우 회사는 광고주 가입을 승인하지 않거나 보류할 수 있습니다.<br>
							    ⑤ 광고주는 1개의 사업자정보에 1개의 운영자정보를 등록할 수 있습니다.<br>
							</div>
            			</div>
          			</li>
          			
          			
          			<li>
            			<div class="terms-check">	
	              			<label class="label-title">광고성 정보 수신 (선택)</label>
	               			<label class="label-agree">동의</label>
							<input type="checkbox" id="" class="">
            			</div>
          			</li>
        		</ul>

        		<div class="btn-select">
					<input type="button" class="btn" value="이전으로" />
					<input type="button" class="btn btn-color" value="동의" />
        		</div>
        		
			</fieldset>
		</form>
	</div>	
	
</div>

</body>
</html>