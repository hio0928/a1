<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<% 
	request.setCharacterEncoding("utf-8");

	String realFolder = getServletContext().getRealPath("/") + "posterImage";
	System.out.println("경로확인 ---->" + realFolder);
	
	int maxSize = 50 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
			encType, new DefaultFileRenamePolicy());
	
	String movie_id = multi.getParameter("movie_id");
	String title = multi.getParameter("title");
	String director = multi.getParameter("director");
	String actor = multi.getParameter("actor");
	String country = multi.getParameter("country");
	String runningtime_m = multi.getParameter("runningtime_m");
	
	Integer runnigtime = Integer.valueOf(runningtime_m);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String imgfile_name = multi.getFilesystemName(fname);
	
	pstmt = null;
	
	String sql = "insert into movie values(?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,movie_id);
	pstmt.setString(2,title);
	pstmt.setString(3,director);
	pstmt.setString(4,actor);
	pstmt.setString(5,country);
	pstmt.setInt(6,runnigtime);
	pstmt.setString(7,imgfile_name);
	pstmt.execute();
	
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("home.jsp");
%>