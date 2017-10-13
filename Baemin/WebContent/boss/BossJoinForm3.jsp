<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입(업소등록) </title>

<style type="text/css">

	.logo { text-align: center; margin-bottom: 20px; margin-top:30px;}
	
	.div1 {text-align: center;}
	.label1-color {color: #2ac1bc;}
	
	
	.terms-content {width: 400px; margin:0 auto; margin-top:20px;}
	
	ul {list-style:none; padding-left:0px;}
	
	input {width:100%; border: none; outline: none; margin-top:8px;}
	
	
	.btn1{ border: 0px; background-color: FFFFFF;}
	
	.btn-image {width:45; hieght: 45;}
	
	
	.btn2 {margin-top : 30px;}
	.btn2 { width: 366px; height:50px; border:0; outline:0; cursor: pointer; color: #ffffff; font-size: 15px;}
	.btn2-color {background-color: #00c1bb; }
	
	.input-size {width: 100;}
	
	.li-margin {margin-top:30px;}

	select {width: 100px;}
	
	#pass-info {font-size: 15px; color: #a6a6a6 ;}

	
	.open-time {float: left; width: 45%;}
	.center {float: left; width: 10%; text-align: center;}
	.close-time {float: left; width: 45%;}
	
	.open-time select {width:70px; height:30px; }
	.close-time select {width:70px; height:30px; }
	
	.li-select select {width:115px; height:30px; }
	
	
	::-webkit-input-placeholder { 
    color: #9e9e9e;
	}
	
	
	
	
	
</style>
 

</head>
<body>

<div>

<div>

	<div class="logo">
		<h2>사장님사이트 회원가입</h2>
	</div>
	
	
	<div class= "div1">
		<label class= "label1">약관동의</label>
		<label class= "label2">></label>
		<label class= "label1">업주정보</label>
		<label class= "label1">></label>
		<label class= "label2 label1-color">업소정보</label>
	</div>
	
	
	
	
		
<div class="terms-content">

    <form id="joinTerms" name="" action="">
      <fieldset>
      
      		<div class="">
      			<ul>
      				<li class="li-margin li-select">
          				<h3>업소정보</h3>
          				
          				<label>업소명</label><br/>
          				<input type="text" placeholder="업소명을 입력해 주세요." ></input><br/>
          				<hr/>
          				
          				<label>업소 주소</label><br/>
          				
          				<select>
          				<option>시도</option>
          				</select>
          				<select>
          				<option>시구군</option>
          				</select>
          				<select>
          				<option>동</option>
          				</select>
          				
          				<br/><br/>	
          				
          				<label>업소이미지첨부</label><br/>
          				<input type="file" value="" class=""></input>
     
          			</li>
          			
          			
          			
          			
          			<li class="li-margin">
          				<h3>운영정보</h3>
          				<label>전화번호</label><br/>
          				<input type="text" placeholder="전화번호를 입력해 주세요."></input>
          				<hr/>
          				
          				
          				<div class="time">
          				<div class="open-time">
          				<label>오픈시간</label><br>
          				<select>
          				
          				

          				<% for(int i=0; i<=23;i++) { 
          					if(i<10){  %>     
          					
          				
          					<option>0<%= i %></option>
          					
          				<% } else{ %>
          				 
          					<option><%= i %></option>
          				<%};
          					}; %>
          				

          				</select>
          				
          				<lable>:</lable>

          				<select>
          				
          				<% for(int i=0; i<=59;i++) {     
          				if(i<10){  %>     
          					 
          				
          					<option>0<%= i %></option>
          					
          				<% } else{ %>
          				 
          					<option><%= i %></option>
          				<%};
          					}; %>
          				
          				</select>
          				</div>
          				
          				 
          				
          				<div class="center">
          				</br><lable >~</lable>
          				</div>
          				
          				
          				<div class="close-time">
          				<label>마감시간</label></br>
          				<select>
          				
          					<% for(int i=0; i<=23;i++) { 
          					if(i<10){  %>     
          					
          				
          					<option>0<%= i %></option>
          					
          				<% } else{ %>
          				 
          					<option><%= i %></option>
          				<%};
          					}; %>

          				</select>

						<lable>:</lable>
						
          				<select>
          				
          				<% for(int i=0; i<=59;i++) {     
          				if(i<10){  %>     
          					 
          				
          					<option>0<%= i %></option>
          					
          				<% } else{ %>
          				 
          					<option><%= i %></option>
          				<%};
          					}; %>
          				
          				</select>
          				</div>
          				</div>

          				</li>

          			<div class="">
          	 			<input type="button" class="btn2 btn2-color" value="완료" />
        			</div>
          		</ul>

 
        </div>
      </fieldset>
    
      
      
      
      
    </form>
  </div>
	
	
	
	
	
	
	
</div>
	
	
	
</body>
</html>