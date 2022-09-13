<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	String filename= "";
	String realFolder = getServletContext().getRealPath("/") + "posterImage";
	String encType = "utf-8";
	int maxSize = 50 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
			maxSize, encType, new DefaultFileRenamePolicy());

	
	String movie_id = multi.getParameter("movie_id");
	String title = multi.getParameter("title");
	String director = multi.getParameter("director");
	String actor = multi.getParameter("actor");
	String country = multi.getParameter("country");
	String runningtime_m = multi.getParameter("runningtime_m");
	
	Integer runningtime = Integer.valueOf(runningtime_m);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String imgfile_name = multi.getFilesystemName(fname);
	
	pstmt = null;
	
	String sql = "update movie set title=?, director=?, actor=?,country=?,runningtime_m=?, imgfile_name=? where movie_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,title);
	pstmt.setString(2,director);
	pstmt.setString(3,actor);
	pstmt.setString(4,country);
	pstmt.setInt(5,runningtime);
	pstmt.setString(6,imgfile_name);
	pstmt.setString(7,movie_id);
	System.out.println(movie_id);
	pstmt.execute();
	
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("editMovie.jsp");
%>