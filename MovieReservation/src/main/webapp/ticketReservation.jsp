<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>영화 예약</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<jsp:include page="side.jsp" />
	<%@ include file="dbconn.jsp"%>
	<div class="container">
		<h3>영화 예약</h3>
	</div>
	<%
		String id = request.getParameter("id");
		String sql = "select * from movie where movie_id = '"+id+"'";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next())
		{ 
	%>
	<div class="mt-5" style="margin-left: 200px">
		<h4> <%=rs.getString("title")%></h4>
			<div >
				<img src="./posterImage/<%=rs.getString("imgfile_name")%>" style="height: 300px">
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
