<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>HOME</title>
<style>
	.Mboard{
		width: 1300px;
		padding-right: 15px;
		padding-left: 15px;
		margin-right: auto;
		margin-left: auto;
		
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<jsp:include page="side.jsp" />
	<div class="Mboard">
		<%@ include file="dbconn.jsp"%>
		<div class="mt-5 border row" style="float: left; width:1000px">
			<%
				String sql = "select * from movie";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
				
			%>
			<div class="m-3 border text-center" style="width: 200px">
				<a href="./movie.jsp?id=<%=rs.getString("movie_id")%>">
				<img src="./posterImage/<%=rs.getString("imgfile_name")%>" style="height: 250px"></a>
				<p><%=rs.getString("title")%>
			</div>
			<%
				}
			%>
		</div>
		<div class="mt-5 border row" style="float: left; width:1000px">
			dd
		</div>
		
		
		<%
		if (rs != null)
			rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
			conn.close();
		%>
	</div>
	
</body>
</html>