<%@ page contentType="text/html; charset=utf-8"%>


<html>
<head>
<title>영화 정보</title>
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
	<div class="mt-5" style="margin-left: 200px">
		<h3> <%=rs.getString("title")%></h3>
		<div class="row">
			<div >
				<img src="./posterImage/<%=rs.getString("imgfile_name")%>" style="height: 400px">
			</div>
			<div class="col-md-6 ml-3">
			<p><b>졔목 : </b><%=rs.getString("title")%></p>
			<p><b>감독 : </b><%=rs.getString("director")%></p>
			<p><b>배우 : </b><%=rs.getString("actor")%></p>
			<p><b>국가 : </b><%=rs.getString("country")%></p>
			<p><b>상영시간 : </b><%=rs.getString("runningtime_m")%>분</p>
			</div>
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