<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style type="text/css">
.text-center {
	margin-bottom: 30px;
}

.select {
	float: left;
	margin: 0px;
	padding: 0px;
}

.xsmall, .img-circle {
	float: left;
}

.xsmall {
	margin-top: 35px;
	margin-bottom: 35px;
	margin-left: 10px;
}

.panel-default {
	float: left;
}

.info {
	height: 150px;
}

#area {
	width: 100%;
}
</style>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container">
		<div class="text-center">
			<img alt="메뉴등록관리" src="../배달의민족/정보수정.png" />
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
					<img src="../배달의민족/치킨1.png" alt="쌀통닭" class="img-circle">
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
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="input-group">
									<label class="input-group-addon">오픈시간</label> <input
										type="text" class="form-control" placeholder="예) 09" />
								</div>
							</div>

							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="input-group">
									<label class="input-group-addon">마감시간</label> <input
										type="text" class="form-control" placeholder="예) 23" />
								</div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon">전화번호</label> <input type="text"
								class="form-control" placeholder="예) 010-1234-5678" />
						</div>
					</div>

					<div class="form-group">
						<div id="area" class="input-group">
							<label>업소소개</label>
							<textarea class="form-control" rows="3"></textarea>
						</div>
					</div>

					<div class="form-group">
						<input type="button" class="btn btn-primary" value="수정">
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>





