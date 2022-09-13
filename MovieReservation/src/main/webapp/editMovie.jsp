<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>영화정보 관리</title>
<script type="text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 영화를 삭제합니다!!") == true)
			location.href ="./processDeleteMovie?id=" + id;
		else
			return;
	}
</script>
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
				<div>
					<a href="./updateMovie.jsp?id=<%=rs.getString("movie_id") %>" 
						class="btn btn-success" role="button"> 수정 &raquo;</a>
					<a href="#"  onclick="deleteConfirm('<%=rs.getString("movie_id") %>')"
						class="btn btn-danger" role="button">삭제 &raquo;</a>	
				</div>
			</div>
			<%
				}
			%>
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