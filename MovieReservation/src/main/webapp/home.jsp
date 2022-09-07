<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>HOME</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="container">
		<%@ include file="dbconn.jsp"%>
		<div class="mt-5 border row" style="float: left; width:800px">
			<%
				String sql = "select imgfile_name, title from movie";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
				
			%>
			<div class="col ml-2 mt-3"><a href="#">
				<img src="./posterImage/<%=rs.getString("imgfile_name")%>" style="height: 250px"></a>
				<p><%=rs.getString("title")%>
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
		</div>
		<jsp:include page="side.jsp" />
	</div>
	
</body>
</html>