<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String projectName = "/Baemin";

	Object obj = session.getAttribute("user");
	Member member = null;
	String name[] = new String[2];
	String mName = null;
	
	if(obj != null) { 
		member = (Member)obj;
		name = member.getmId().split("@");
		mName = name[0];
	}

%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="<%= projectName %>/css/member/MainBar.css" />


<script type="text/javascript" src="<%= projectName %>/lib/jquery-3.1.1.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	$(function() {
		$("#selectlocation").focus(function () {
			this.placeholder = "";
		});
		$("#selectfoodhome").focus(function () {
			this.placeholder = "";
		});
		$("#selectlocation").blur(function() {
			this.placeholder = "위치를 지정하세요";
		});
		$("#selectfoodhome").blur(function () {
			this.placeholder = "업소명을 검색하세요";
		});
		
		
	});
	
	
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
//                 // 건물명이 있고, 공동주택일 경우 추가한다.
//                 if(data.buildingName !== '' && data.apartment === 'Y'){
//                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                 }
//                 // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                 if(extraRoadAddr !== ''){
//                     extraRoadAddr = ' (' + extraRoadAddr + ')';
//                 }
//                 // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
//                 if(fullRoadAddr !== ''){
//                     fullRoadAddr += extraRoadAddr;
//                 }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
//                 document.getElementById('sample4_roadAddress').value = fullRoadAddr;
//                 document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
				document.getElementById('selectlocation').value = extraRoadAddr;
				window.close();
				document.getElementById('#frm').submit();

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
        
        
    }
	
	
	

	
	
</script>
</head>
<body>
	<p id="quickmenu">
		<% if( member != null ) { %> <%= mName %>님 환영합니다 ㅣ 
		<a href="<%=projectName%>/baemin?cmd=logout-page">로그아웃 </a> <% } else { %>
		<a href="<%=projectName%>/baemin?cmd=login-page">로그인</a>  ㅣ
		<a href="<%=projectName%>/baemin?cmd=join-first">회원가입</a> <% } %> ㅣ 
		<a href="<%=projectName%>/baemin?cmd=boss-main">사장님</a>
	</p>

	<div class="center">
		<h3>
			<a href="<%=projectName%>/baemin?cmd=main-page">
			<img id="logo" src="<%= projectName %>/배달의민족/로고.jpg" /></a><br /> 
<!-- 				<input type="text" id="SelectLocation" name="SelectLocation" value="위치를 지정하세요"> -->
			<!-- 		<input type="text" id="SelectFoodHome" name="SelectFoodHome" value="업소명을 검색하세요"> -->
			<div class="d1">
				<form>
					<input id="selectlocation" name="" type="text" placeholder="위치를 지정하세요">
					<button type="button" onclick="sample4_execDaumPostcode()"></button>
				</form>
			</div>
			<div class="d1">
				<form id="" method="get" action="<%= projectName %>/baemin">
					<input id="selectfoodhome" name="searchfoodhome" type="text" placeholder="업소를 검색하세요"/>
					<input type='hidden' name='cmd' value='search-db'/>
					<button type="submit"></button>
				</form>
			</div>
		</h3>
	</div>
</body>
</html>