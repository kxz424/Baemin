<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% String projectName = "/Baemin"; %>
	
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="<%= projectName %>/boss/AddMenuForm.css"/>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%= projectName %>/boss/AddMenuForm.js"></script>

</head>
<body>
	<div class="container">
		<div class="text-center">
			<img alt="메뉴등록관리" src="<%= projectName %>/배달의민족/메뉴등록.png" />
		</div>

		<div class="select">
			<select>
				<option>쌀통닭-신천점</option>
				<option>굽네치킨-가락점</option>
			</select>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<div class="info">
					<img src="<%= projectName %>/배달의민족/치킨1.png" alt="쌀통닭" class="img-circle">
					<dl class="sinfo xsmall">
						<dd>쌀통닭-신천점</dd>
						<dd>서울특별시 송파구 석촌동</dd>
						<dd>
							<strong class="text-primary">050-4994-3230</strong>
						</dd>
					</dl>
				</div>
				<form>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="input-group">
									<label class="input-group-addon">메뉴명</label> <input type="text"
										id="menuName" class="form-control" placeholder="메뉴명을 입력하세요." />
								</div>
							</div>

							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="input-group">
									<label class="input-group-addon">가격</label> <input type="text"
										id="menuPrice" class="form-control" placeholder="가격을 입력하세요." />
								</div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="exampleInputFile">파일 업로드</label> <input type="file"
							id="exampleInputFile">
						<p class="help-block">여기에 블록레벨 도움말 예제</p>
					</div>

					<div class="form-group">
						<input type="button" id="modify" class="btn btn-primary" value="수정"> <input
							type="button" id="insert" class="btn btn-success" value="등록">
					</div>
				</form>

				<table class="table table-hover">
					<thead>
						<tr>
							<th>메뉴명</th>
							<th>가격</th>
							<th>품절유무</th>
						</tr>
					</thead>
					<tr>
						<td>쌀통닭</td>
						<td>16,900원</td>
						<td>N</td>
					</tr>
					<tr>
						<td>양파올린닭</td>
						<td>19,900원</td>
						<td>N</td>
					</tr>
				</table>

			</div>
		</div>
	</div>

</body>
</html>





