<%@ page contentType="text/html; charset=utf-8"%><html>

<head>
<title>영화 등록</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<jsp:include page="side.jsp" />
	<div class="mt-5">
		<div class="container">
			<h3>영화 등록</h3>

			<form name="newMovie" action="./processAddMovie.jsp" 
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row mt-5">
				<label class="col-sm-2">영화 코드</label>
				<div class="col-sm-3">
					<input type="text" id="movie_id" name="movie_id" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">영화 제목</label>
				<div class="col-sm-3">
					<input type="text" id="title" name="title" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">감독</label>
				<div class="col-sm-3">
					<input type="text" id="director" name="director" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출현 배우</label>
				<div class="col-sm-3">
					<input type="text" id="actor" name="actor" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제작 국가</label>
				<div class="col-sm-3">
					<input type="text" id="country" name="country" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상영시간</label>
				<div class="col-sm-3">
					<input type="text" id="runningtime_m" name="runningtime_m" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">포스터 이미지</label>
				<div class="col-sm-5">
					<input type="file" id="posterImage" name="posterImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록하기">
				</div>
			</div>
		</form>
		</div>
	</div>
</body>
</html>