<%@ page contentType="text/html; charset=utf-8"%>


<html>
<head>
<title>상영 일정 생성</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<jsp:include page="side.jsp" />
	<%@ include file="dbconn.jsp"%>
	<%
		String id = request.getParameter("id");
		String sql = "select * from movie where movie_id = '"+id+"'";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next())
		{ 
	%>
	<div class="container">
		<h2>상영 일정 등록</h2>
	</div>
	<div class="mt-5" style="margin-left: 200px">
		<h4> <%=rs.getString("title")%></h4>
		<div class="row">
			<div >
				<img src="./posterImage/<%=rs.getString("imgfile_name")%>" style="height: 400px">
			</div>
			<div class="col-md-3 ml-3 p-2 ">
				<p><b>영화코드 : </b><%=rs.getString("movie_id")%></p>
				<p><b>졔목 : </b><%=rs.getString("title")%></p>
				<p><b>감독 : </b><%=rs.getString("director")%></p>
				<p><b>배우 : </b><%=rs.getString("actor")%></p>
				<p><b>국가 : </b><%=rs.getString("country")%></p>
				<p><b>상영시간 : </b><%=rs.getString("runningtime_m")%>분</p>
			</div>
			<form name="newSchedule" action="./processSchecduleMovie.jsp" 
			class="form-horizontal p-2" method="post" style="background-color: #FDF5E6">
			<input type="hidden" id="movie_id" name="movie_id" value="<%=rs.getString("movie_id")%>">			
			<div class="form-group row">
				<label class="col-sm-4 mt-1"><b>상영 코드 : </b></label>
				<div class="col-sm-5">
					<input type="text" id="screen_id" name="screen_id" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 mt-1"><b>상영관 번호 : </b></label>
				<div class="col-sm-5">
					<input type="text" id="theater_num" name="theater_num" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 mt-1"><b>상영 시간 : </b></label>
				<div class="col-sm-8">
					<input type="datetime-local" id="screen_start" name="screen_start" class="form-control">
					<b>~</b><input type="datetime-local" id="screen_end" name="screen_end" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 mt-1"><b>가격 : </b></label>
				<div class="col-sm-5">
					<input type="text" id="cost" name="cost" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-11 mt-4">
					<input type="submit" class="btn btn-primary float-right" value="등록하기">
				</div>
			</div>
			</form>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>