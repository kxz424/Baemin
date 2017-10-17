<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Baemin"; %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입(업주정보) </title>
<link rel="stylesheet" type="text/css" href="<%= projectName %>/css/boss/BossJoinForm2.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= projectName %>/js/boss/BossJoinForm2.js"></script>
</head>
<body>

<div>

	<div class="logo">
		<h2>사장님사이트 회원가입</h2>
	</div>
	
	
	<div class= "div1">
		<label class= "label1">약관동의</label>
		<label class= "label2">></label>
		<label class= "label1 label1-color">업주정보</label>
		<label class= "label1 label1-color">></label>
		<label class= "label2">업소정보</label>
	</div>
	

	<div class="terms-content">

    <form id="joinTerms" method="post" action="<%= projectName %>/baemin?cmd=boss-join2">
		<fieldset>
			<div class="">
      			<ul>
      				<li class="boss-info li-margin">
          				<h3>사장님 정보</h3>
          				
          				<label>사장님 성함</label><br/>
          				<input type="text" placeholder="사업자등록증상의 본명을 입력해 주세요." name="bName" /><br/>
          				<hr/>
          				
          				<label>생년월일</label><br/>
          				<input type="text" placeholder="생년월일 6자를 입력해 주세요." name="bBirth"/><br/>
          				<hr/>
          				
          				<label>휴대폰번호</label><br/>
          				
          				<select name="bTel1">
          				<option>010</option>
          				<option>011</option>
          				<option>016</option>
          				<option>017</option>
          				<option>018</option>
          				<option>019</option>
          				</select>
          				
          				<label>-</label>
          				<input type="text" class="input-size" name="bTel2"/>
          				<label>-</label>
          				<input type="text" class="input-size" name="bTel3"/><br/>
          				<hr/>
          				
          				<label>이메일</label><br/>
          				<input type="email" placeholder="이메일 주소 전체를 입력해 주세요." name="bMail"/><br/>
          				<hr/>
          			</li>

          			<li class="boss-num li-margin">
          				<h3>사업자등록 정보</h3>
          				<label>사업자등록번호</label><br/>
          				<input type="text" placeholder="본인명의로 등록된 업소의 사업자등록 번호를 입력해 주세요." name="bNum"/>
          				<hr/>
          				
          			</li>
          			
          			<li class="boss-id li-margin">
          				<h3>계정 정보</h3>
          				<label>아이디</label><br/>
          				<input type="text" placeholder="띄어쓰기 없이 영문과 숫자 포함하여 4~20자" name="bId"/>
          				<hr/>
          				<label>비밀번호</label><br/>
          				<input id="test" type="password" placeholder="띄어쓰기 없이 영문과 숫자 포함하여 8~20자" name="bPassword"/>
          				<hr/>
          				<label>비밀번호 확인</label><br/>
          				<input type="password" placeholder="위에서 입력하신 비밀번호를 한번 더 입력해 주세요."/>
          				<hr/>
          				
          				<label id="pass-info">비밀번호는 영문,숫자, 특수문자를 혼합하여 만드시면 보다 안전합니다. 계정,전화번호와 같은 번호나 연속된 문자열은 권장하지 않습니다.</label>
          				
          			</li>
          			
          			
          			<div class="btn-select">
          	 			<input type="button" class="btn btn-color" value="다음" />
        			</div>
          		</ul>
			</div>
		</fieldset>
	</form>
	</div>
	
	
	
	
	
</div>
	
</body>
</html>