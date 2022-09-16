<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<% 
	request.setCharacterEncoding("utf-8");
	
	
	String screen_id = request.getParameter("screen_id"); 
	String movie_id = request.getParameter("movie_id");
	String theater_num = request.getParameter("theater_num");
	String screen_start = request.getParameter("screen_start");
	String screen_end = request.getParameter("screen_end");
	String cost = request.getParameter("cost");
	
	screen_start = screen_start.replace('T', ' ') +":00";
	screen_end = screen_end.replace('T', ' ')+":00";
	
	Integer IntCost = Integer.valueOf(cost);
	System.out.println(screen_start);
	System.out.println(screen_end);
	
	
	pstmt = null;
	
	String sql = "insert into screen values(?,?,?,?,?,?)";
// 	pstmt = conn.prepareStatement(sql);
// 	pstmt.setString(1,screen_id);
// 	pstmt.setString(2,movie_id);
// 	pstmt.setString(3,theater_num);
// 	pstmt.setString(4,screen_start);
// 	pstmt.setString(5,screen_end);
// 	pstmt.setInt(6,IntCost);
	sql = "insert into screen values('"+screen_id+"','"+movie_id+"','"+theater_num+"','"+screen_start+"','"+screen_end+"',"+cost+")";
// 	sql = "insert into screen values('2','m0001','1','2022-09-14 15:21','2022-09-14 21:21','1')";
	System.out.println(sql);
	pstmt = conn.prepareStatement(sql);
	pstmt.execute();
	
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("home.jsp");
%>